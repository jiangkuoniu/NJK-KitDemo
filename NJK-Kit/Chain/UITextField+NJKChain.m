//
//  UITextField+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UITextField+NJKChain.h"

@implementation UITextField (NJKChain)

- (UITextField *(^)(NSString *text))njk_text{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}
- (UITextField *(^)(NSAttributedString *attributedText))njk_attributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}
- (UITextField *(^)(UIColor *textColor))njk_textColor{
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}
- (UITextField *(^)(UIFont *font))njk_font{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
- (UITextField *(^)(NSTextAlignment textAlignment))njk_textAlignment{
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UITextField *(^)(UITextBorderStyle borderStyle))njk_borderStyle{
    return ^(UITextBorderStyle borderStyle){
        self.borderStyle = borderStyle;
        return self;
    };
}
- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *defaultTextAttributes))njk_defaultTextAttributes{
    return ^(NSDictionary<NSAttributedStringKey,id> *defaultTextAttributes){
        self.defaultTextAttributes = defaultTextAttributes;
        return self;
    };
}
- (UITextField *(^)(NSString *text))njk_placeholder{
    return ^(NSString *placeholder){
        self.placeholder = placeholder;
        return self;
    };
}
- (UITextField *(^)(NSAttributedString *attributedPlaceholder))njk_attributedPlaceholder{
    return ^(NSAttributedString *attributedPlaceholder){
        self.attributedPlaceholder = attributedPlaceholder;
        return self;
    };
}
- (UITextField *(^)(BOOL clearsOnBeginEditing))njk_clearsOnBeginEditing{
    return ^(BOOL clearsOnBeginEditing){
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}
- (UITextField *(^)(BOOL adjustsFontSizeToFitWidth))njk_adjustsFontSizeToFitWidth{
    return ^(BOOL adjustsFontSizeToFitWidth){
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (UITextField *(^)(CGFloat minimumFontSize))njk_minimumFontSize{
    return ^(CGFloat minimumFontSize){
        self.minimumFontSize = minimumFontSize;
        return self;
    };
}
- (UITextField *(^)(UIImage *background))njk_background{
    return ^(UIImage *background){
        self.background = background;
        return self;
    };
}
- (UITextField *(^)(UIImage *disabledBackground))njk_disabledBackground{
    return ^(UIImage *disabledBackground){
        self.disabledBackground = disabledBackground;
        return self;
    };
}
- (UITextField *(^)(BOOL allowsEditingTextAttributes))njk_allowsEditingTextAttributes{
    return ^(BOOL allowsEditingTextAttributes){
        self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (UITextField *(^)(NSDictionary<NSAttributedStringKey,id> *typingAttributes))njk_typingAttributes{
    return ^(NSDictionary<NSAttributedStringKey,id> *typingAttributes){
        self.typingAttributes = typingAttributes;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode clearButtonMode))njk_clearButtonMode{
    return ^(UITextFieldViewMode clearButtonMode){
        self.clearButtonMode = clearButtonMode;
        return self;
    };
}
- (UITextField *(^)(UIView *leftView))njk_leftView{
    return ^(UIView *leftView){
        self.leftView = leftView;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode leftViewMode))njk_leftViewMode{
    return ^(UITextFieldViewMode leftViewMode){
        self.clearButtonMode = leftViewMode;
        return self;
    };
}
- (UITextField *(^)(UIView *rightView))njk_rightView{
    return ^(UIView *rightView){
        self.rightView = rightView;
        return self;
    };
}
- (UITextField *(^)(UITextFieldViewMode rightViewMode))njk_rightViewMode{
    return ^(UITextFieldViewMode rightViewMode){
        self.rightViewMode = rightViewMode;
        return self;
    };
}
- (UITextField *(^)(UIView *inputView))njk_inputView{
    return ^(UIView *inputView){
        self.inputView = inputView;
        return self;
    };
}
- (UITextField *(^)(UIView *inputAccessoryView))njk_inputAccessoryView{
    return ^(UIView *inputAccessoryView){
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };
}

@end
