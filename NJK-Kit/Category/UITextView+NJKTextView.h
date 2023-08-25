//
//  UITextView+NJKTextView.h
//  NJK-KitDemo
//
//  Created by NJK on 2023/8/24.
//  Copyright © 2023 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (NJKTextView)
@property (nonatomic, assign) NSInteger maxInputInteger;//最大输入内容
@property (nonatomic, assign) BOOL needAccessoryView;//键盘上的完成按钮，用户辅助键盘收回
@end







typedef void(^textViewHeightDidChangedBlock)(CGFloat currentTextViewHeight);

@interface UITextView (PlaceholderTextView)

/* 占位文字 */
@property (nonatomic, copy) NSString *wzb_placeholder;

/* 占位文字颜色 */
@property (nonatomic, strong) UIColor *wzb_placeholderColor;

/* 最大高度，如果需要随文字改变高度的时候使用 */
@property (nonatomic, assign) CGFloat wzb_maxHeight;

/* 最小高度，如果需要随文字改变高度的时候使用 */
@property (nonatomic, assign) CGFloat wzb_minHeight;

@property (nonatomic, copy) textViewHeightDidChangedBlock wzb_textViewHeightDidChanged;


/* 自动高度的方法，maxHeight：最大高度 */
- (void)wzb_autoHeightWithMaxHeight:(CGFloat)maxHeight;

/* 自动高度的方法，maxHeight：最大高度， textHeightDidChanged：高度改变的时候调用 */
- (void)wzb_autoHeightWithMaxHeight:(CGFloat)maxHeight textViewHeightDidChanged:(textViewHeightDidChangedBlock)textViewHeightDidChanged;

@end

NS_ASSUME_NONNULL_END
