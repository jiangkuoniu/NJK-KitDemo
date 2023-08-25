//
//  UITextField+NJKTextField.m
//  NJK-KitDemo
//
//  Created by NJK on 2023/8/24.
//  Copyright © 2023 NJK. All rights reserved.
//

#import "UITextField+NJKTextField.h"
#import <objc/runtime.h>

@implementation UITextField (NJKTextField)

- (void)setMaxInputInteger:(NSInteger)maxInputInteger{
    [self willChangeValueForKey:@"maxInputInteger"];
    objc_setAssociatedObject(self, @selector(setMaxInputInteger:), @(maxInputInteger), OBJC_ASSOCIATION_RETAIN);
    [self didChangeValueForKey:@"maxInputInteger"];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textFieldChanged:) name:UITextFieldTextDidChangeNotification object:self];
}

- (NSInteger)maxInputInteger{
    return [objc_getAssociatedObject(self, @selector(setMaxInputInteger:)) integerValue];
}

- (void)textFieldChanged:(NSNotification *)notification{
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

- (NSString *)getSubString:(NSString*)string {
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
