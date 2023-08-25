//
//  UITextView+NJKTextView.m
//  NJK-KitDemo
//
//  Created by NJK on 2023/8/24.
//  Copyright © 2023 NJK. All rights reserved.
//

#import "UITextView+NJKTextView.h"
#import <objc/runtime.h>

@implementation UITextView (NJKTextView)

- (void)setMaxInputInteger:(NSInteger)maxInputInteger{
    [self willChangeValueForKey:@"maxInputInteger"];
    objc_setAssociatedObject(self, @selector(setMaxInputInteger:), @(maxInputInteger), OBJC_ASSOCIATION_RETAIN);
    [self didChangeValueForKey:@"maxInputInteger"];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewChanged:) name:UITextViewTextDidChangeNotification object:self];
}

- (NSInteger)maxInputInteger{
    return [objc_getAssociatedObject(self, @selector(setMaxInputInteger:)) integerValue];
}

- (void)textViewChanged:(NSNotification *)notification{
    NSString *toBeString = self.text;
//    toBeString = [self disable_emoji:toBeString];过滤表情
    NSString *lang = [[self textInputMode] primaryLanguage];
    if([lang isEqualToString:@"zh-Hans"]) {
        UITextRange *selectedRange = [self markedTextRange];
        //获取高亮部分
        UITextPosition *position = [self positionFromPosition:selectedRange.start offset:0];
        //没有高亮选择的字，则对已输入的文字进行字数统计和限制
        if(!position) {
            NSString *getStr = [self getSubString:toBeString];
            if(getStr && getStr.length > 0) {
                self.text = getStr;
            }
        }
    } else{
        NSString *getStr = [self getSubString:toBeString];
        if(getStr && getStr.length > 0) {
            self.text= getStr;
        }else {
            self.text = toBeString;
        }
    }
}

- (NSString *)disable_emoji:(NSString *)text{
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"[^\\u0020-\\u007E\\u00A0-\\u00BE\\u2E80-\\uA4CF\\uF900-\\uFAFF\\uFE30-\\uFE4F\\uFF00-\\uFFEF\\u0080-\\u009F\\u2000-\\u201f\r\n]"options:NSRegularExpressionCaseInsensitive error:nil];
    NSString *modifiedString = [regex stringByReplacingMatchesInString:text
                                                               options:0
                                                                 range:NSMakeRange(0, [text length])
                                                          withTemplate:@""];
    return modifiedString;
}

-(NSString *)getSubString:(NSString*)string {
    if (string.length > self.maxInputInteger) {
        return [string substringToIndex:self.maxInputInteger];
    }
    return nil;
}

- (void)setNeedAccessoryView:(BOOL)needAccessoryView{
    objc_setAssociatedObject(self, @selector(setNeedAccessoryView:), @(needAccessoryView), OBJC_ASSOCIATION_ASSIGN);
    if (needAccessoryView) {
        self.inputAccessoryView = self.customAccessoryView;
    }else{
        self.inputAccessoryView = nil;
    }
}

- (BOOL)needAccessoryView {
    return [objc_getAssociatedObject(self, @selector(setNeedAccessoryView:)) integerValue];
}

- (UIToolbar *)customAccessoryView{
    UIToolbar *customAccessoryView = [[UIToolbar alloc]initWithFrame:(CGRect){0,0,([UIScreen mainScreen].bounds.size.width),40}];
    customAccessoryView.barTintColor = (self.keyboardAppearance == UIKeyboardAppearanceDark)?UIColor.blackColor:UIColor.whiteColor;
    UIBarButtonItem *space = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *finish = [[UIBarButtonItem alloc]initWithTitle:@"完成" style:UIBarButtonItemStyleDone target:self action:@selector(resignFirstResponder)];
    [customAccessoryView setItems:@[space,space,finish]];
    return customAccessoryView;
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end






@interface UITextView ()

// 存储最后一次改变高度后的值
@property (nonatomic, assign) CGFloat lastHeight;

@end

@implementation UITextView (PlaceholderTextView)


// 占位文字
static const void *WZBPlaceholderViewKey = &WZBPlaceholderViewKey;
// 占位文字颜色
static const void *WZBPlaceholderColorKey = &WZBPlaceholderColorKey;
// 最大高度
static const void *WZBTextViewMaxHeightKey = &WZBTextViewMaxHeightKey;
// 最小高度
static const void *WZBTextViewMinHeightKey = &WZBTextViewMinHeightKey;
// 高度变化的block
static const void *WZBTextViewHeightDidChangedBlockKey = &WZBTextViewHeightDidChangedBlockKey;
// 存储最后一次改变高度后的值
static const void *WZBTextViewLastHeightKey = &WZBTextViewLastHeightKey;
// 是否启用自动高度，默认为NO
static bool autoHeight = NO;

#pragma mark - Swizzle Dealloc
+ (void)load {
    // 交换dealoc
    Method dealoc = class_getInstanceMethod(self.class, NSSelectorFromString(@"dealloc"));
    Method myDealloc = class_getInstanceMethod(self.class, @selector(myDealloc));
    method_exchangeImplementations(dealoc, myDealloc);
}

- (void)myDealloc {
    // 移除监听
    [[NSNotificationCenter defaultCenter] removeObserver:self];

    UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);

    // 如果有值才去调用，这步很重要
    if (placeholderView) {
        NSArray *propertys = @[@"frame", @"bounds", @"font", @"text", @"textAlignment", @"textContainerInset"];
        for (NSString *property in propertys) {
            @try {
                [self removeObserver:self forKeyPath:property];
            } @catch (NSException *exception) {}
        }
    }
    [self myDealloc];
}

#pragma mark - set && get
- (UITextView *)wzb_placeholderView {

    // 为了让占位文字和textView的实际文字位置能够完全一致，这里用UITextView
    UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);

    if (!placeholderView) {

        placeholderView = [[UITextView alloc] init];
        // 动态添加属性的本质是: 让对象的某个属性与值产生关联
        objc_setAssociatedObject(self, WZBPlaceholderViewKey, placeholderView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        placeholderView = placeholderView;

        // 设置基本属性
        placeholderView.scrollEnabled = placeholderView.userInteractionEnabled = NO;
//        self.scrollEnabled = placeholderView.scrollEnabled = placeholderView.showsHorizontalScrollIndicator = placeholderView.showsVerticalScrollIndicator = placeholderView.userInteractionEnabled = NO;
        placeholderView.textColor = [UIColor lightGrayColor];
        placeholderView.backgroundColor = [UIColor clearColor];
        [self refreshPlaceholderView];
        [self addSubview:placeholderView];

        // 监听文字改变
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextChange) name:UITextViewTextDidChangeNotification object:self];

        // 这些属性改变时，都要作出一定的改变，尽管已经监听了TextDidChange的通知，也要监听text属性，因为通知监听不到setText：
        NSArray *propertys = @[@"frame", @"bounds", @"font", @"text", @"textAlignment", @"textContainerInset"];

        // 监听属性
        for (NSString *property in propertys) {
            [self addObserver:self forKeyPath:property options:NSKeyValueObservingOptionNew context:nil];
        }

    }
    return placeholderView;
}

- (void)setWzb_placeholder:(NSString *)placeholder{
    // 为placeholder赋值
    [self wzb_placeholderView].text = placeholder;
}

- (NSString *)wzb_placeholder{
    // 如果有placeholder值才去调用，这步很重要
    if (self.placeholderExist) {
        return [self wzb_placeholderView].text;
    }
    return nil;
}

- (void)setWzb_placeholderColor:(UIColor *)wzb_placeholderColor{
    // 如果有placeholder值才去调用，这步很重要
    if (!self.placeholderExist) {
        NSLog(@"请先设置placeholder值！");
    } else {
        self.wzb_placeholderView.textColor = wzb_placeholderColor;

        // 动态添加属性的本质是: 让对象的某个属性与值产生关联
        objc_setAssociatedObject(self, WZBPlaceholderColorKey, wzb_placeholderColor, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
}

- (UIColor *)wzb_placeholderColor{
    return objc_getAssociatedObject(self, WZBPlaceholderColorKey);
}

- (void)setWzb_maxHeight:(CGFloat)wzb_maxHeight{
    CGFloat max = wzb_maxHeight;

    // 如果传入的最大高度小于textView本身的高度，则让最大高度等于本身高度
    if (wzb_maxHeight < self.frame.size.height) {
        max = self.frame.size.height;
    }

    objc_setAssociatedObject(self, WZBTextViewMaxHeightKey, [NSString stringWithFormat:@"%lf", max], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGFloat)wzb_maxHeight{
    return [objc_getAssociatedObject(self, WZBTextViewMaxHeightKey) doubleValue];
}

- (void)setWzb_minHeight:(CGFloat)wzb_minHeight{
    objc_setAssociatedObject(self, WZBTextViewMinHeightKey, [NSString stringWithFormat:@"%lf", wzb_minHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGFloat)wzb_minHeight{
    return [objc_getAssociatedObject(self, WZBTextViewMinHeightKey) doubleValue];
}

- (void)setWzb_textViewHeightDidChanged:(textViewHeightDidChangedBlock)wzb_textViewHeightDidChanged{
    objc_setAssociatedObject(self, WZBTextViewHeightDidChangedBlockKey, wzb_textViewHeightDidChanged, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (textViewHeightDidChangedBlock)wzb_textViewHeightDidChanged{
    void(^textViewHeightDidChanged)(CGFloat currentHeight) = objc_getAssociatedObject(self, WZBTextViewHeightDidChangedBlockKey);
    return textViewHeightDidChanged;
}


- (void)setLastHeight:(CGFloat)lastHeight {
    objc_setAssociatedObject(self, WZBTextViewLastHeightKey, [NSString stringWithFormat:@"%lf", lastHeight], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (CGFloat)lastHeight {
    return [objc_getAssociatedObject(self, WZBTextViewLastHeightKey) doubleValue];
}

- (void)wzb_autoHeightWithMaxHeight:(CGFloat)maxHeight{
    [self wzb_autoHeightWithMaxHeight:maxHeight textViewHeightDidChanged:nil];
}

- (void)wzb_autoHeightWithMaxHeight:(CGFloat)maxHeight textViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged{
    autoHeight = YES;
    [self wzb_placeholderView];
    self.wzb_maxHeight = maxHeight;
    if (textViewHeightDidChanged) self.wzb_textViewHeightDidChanged = textViewHeightDidChanged;
}


#pragma mark - KVO监听属性改变
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    [self refreshPlaceholderView];
    if ([keyPath isEqualToString:@"text"]) [self textViewTextChange];
}

// 刷新PlaceholderView
- (void)refreshPlaceholderView {

    UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);

    // 如果有值才去调用，这步很重要
    if (placeholderView) {
        self.wzb_placeholderView.frame = self.bounds;
        if (self.wzb_maxHeight < self.bounds.size.height) self.wzb_maxHeight = self.bounds.size.height;
        self.wzb_placeholderView.font = self.font;
        self.wzb_placeholderView.textAlignment = self.textAlignment;
        self.wzb_placeholderView.textContainerInset = self.textContainerInset;
        self.wzb_placeholderView.hidden = (self.text.length > 0 && self.text);
    }
}

// 处理文字改变
- (void)textViewTextChange {
    UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);

    // 如果有值才去调用，这步很重要
    if (placeholderView) {
        self.wzb_placeholderView.hidden = (self.text.length > 0 && self.text);
    }
    // 如果没有启用自动高度，不执行以下方法
    if (!autoHeight) return;
    if (self.wzb_maxHeight >= self.bounds.size.height) {

        // 计算高度
        NSInteger currentHeight = ceil([self sizeThatFits:CGSizeMake(self.bounds.size.width, MAXFLOAT)].height);

        // 如果高度有变化，调用block
        if (currentHeight != self.lastHeight) {
            // 是否可以滚动
            self.scrollEnabled = currentHeight >= self.wzb_maxHeight;
            CGFloat currentTextViewHeight = currentHeight >= self.wzb_maxHeight ? self.wzb_maxHeight : currentHeight;
            // 改变textView的高度
            if (currentTextViewHeight >= self.wzb_minHeight) {
                CGRect frame = self.frame;
                frame.size.height = currentTextViewHeight;
                self.frame = frame;
                // 调用block
                if (self.wzb_textViewHeightDidChanged) self.wzb_textViewHeightDidChanged(currentTextViewHeight);
                // 记录当前高度
                self.lastHeight = currentTextViewHeight;
            }
        }
    }

//    if (!self.isFirstResponder) [self becomeFirstResponder];
}

// 判断是否有placeholder值，这步很重要
- (BOOL)placeholderExist {

    // 获取对应属性的值
    UITextView *placeholderView = objc_getAssociatedObject(self, WZBPlaceholderViewKey);

    // 如果有placeholder值
    if (placeholderView) return YES;

    return NO;
}

#pragma mark - 过期
- (NSString *)placeholder{
    return self.wzb_placeholder;
}

- (void)setPlaceholder:(NSString *)placeholder{
    self.wzb_placeholder = placeholder;
}

- (UIColor *)placeholderColor{
    return self.wzb_placeholderColor;
}

- (void)setPlaceholderColor:(UIColor *)placeholderColor{
    self.wzb_placeholderColor = placeholderColor;
}

- (void)setMaxHeight:(CGFloat)maxHeight{
    self.wzb_maxHeight = maxHeight;
}

- (CGFloat)maxHeight{
    return self.maxHeight;
}

- (void)setMinHeight:(CGFloat)minHeight{
    self.wzb_minHeight = minHeight;
}

- (CGFloat)minHeight{
    return self.wzb_minHeight;
}

- (void)setTextViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged{
    self.wzb_textViewHeightDidChanged = textViewHeightDidChanged;
}

- (textViewHeightDidChangedBlock)textViewHeightDidChanged{
    return self.wzb_textViewHeightDidChanged;
}

- (void)autoHeightWithMaxHeight:(CGFloat)maxHeight{
    [self wzb_autoHeightWithMaxHeight:maxHeight];
}

- (void)autoHeightWithMaxHeight:(CGFloat)maxHeight textViewHeightDidChanged:(void(^)(CGFloat currentTextViewHeight))textViewHeightDidChanged{
    [self wzb_autoHeightWithMaxHeight:maxHeight textViewHeightDidChanged:textViewHeightDidChanged];
}


@end
