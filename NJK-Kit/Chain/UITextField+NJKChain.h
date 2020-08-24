//
//  UITextField+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (NJKChain)

- (UITextField *(^)(NSString *text))njk_text;
- (UITextField *(^)(NSAttributedString *attributedText))njk_attributedText;
- (UITextField *(^)(UIColor *textColor))njk_textColor;
- (UITextField *(^)(UIFont *font))njk_font;
- (UITextField *(^)(NSTextAlignment textAlignment))njk_textAlignment;
- (UITextField *(^)(UITextBorderStyle borderStyle))njk_borderStyle;
- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *defaultTextAttributes))njk_defaultTextAttributes;
- (UITextField *(^)(NSString *text))njk_placeholder;
- (UITextField *(^)(NSAttributedString *attributedPlaceholder))njk_attributedPlaceholder;
- (UITextField *(^)(BOOL clearsOnBeginEditing))njk_clearsOnBeginEditing;
- (UITextField *(^)(BOOL adjustsFontSizeToFitWidth))njk_adjustsFontSizeToFitWidth;
- (UITextField *(^)(CGFloat minimumFontSize))njk_minimumFontSize;
- (UITextField *(^)(UIImage *background))njk_background;
- (UITextField *(^)(UIImage *disabledBackground))njk_disabledBackground;
- (UITextField *(^)(BOOL allowsEditingTextAttributes))njk_allowsEditingTextAttributes;
- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *typingAttributes))njk_typingAttributes;
- (UITextField *(^)(UITextFieldViewMode clearButtonMode))njk_clearButtonMode;
- (UITextField *(^)(UIView *leftView))njk_leftView;
- (UITextField *(^)(UITextFieldViewMode leftViewMode))njk_leftViewMode;
- (UITextField *(^)(UIView *rightView))njk_rightView;
- (UITextField *(^)(UITextFieldViewMode rightViewMode))njk_rightViewMode;
- (UITextField *(^)(UIView *inputView))njk_inputView;
- (UITextField *(^)(UIView *inputAccessoryView))njk_inputAccessoryView;

@end

NS_ASSUME_NONNULL_END
