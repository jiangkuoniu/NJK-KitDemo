//
//  UITextView+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UITextView+NJKChain.h"

@implementation UITextView (NJKChain)

- (UITextView *(^)(NSString *text))njk_text{
    return ^(NSString *text){
        self.text = text;
        return self;
    };
}
- (UITextView *(^)(UIFont *font))njk_font{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
- (UITextView *(^)(UIColor *textColor))njk_textColor{
    return ^(UIColor *textColor){
        self.textColor = textColor;
        return self;
    };
}
- (UITextView *(^)(NSTextAlignment textAlignment))njk_textAlignment{
    return ^(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UITextView *(^)(NSRange selectedRange))njk_selectedRange{
    return ^(NSRange selectedRange){
        self.selectedRange = selectedRange;
        return self;
    };
}
- (UITextView *(^)(BOOL selectedRange))njk_editable{
    return ^(BOOL editable){
        self.editable = editable;
        return self;
    };
}
- (UITextView *(^)(BOOL selectable))njk_selectable{
    return ^(BOOL selectable){
        self.selectable = selectable;
        return self;
    };
}
- (UITextView *(^)(UIDataDetectorTypes dataDetectorTypes))njk_dataDetectorTypes{
    return ^(UIDataDetectorTypes dataDetectorTypes){
        self.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}
- (UITextView *(^)(BOOL allowsEditingTextAttributes))njk_allowsEditingTextAttributes{
    return ^(BOOL allowsEditingTextAttributes){
        self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}
- (UITextView *(^)(NSAttributedString *attributedText))njk_attributedText{
    return ^(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}
- (UITextView *(^)(NSDictionary<NSAttributedStringKey, id> *typingAttributes))njk_typingAttributes{
    return ^(NSDictionary<NSAttributedStringKey, id> *typingAttributes){
        self.typingAttributes = typingAttributes;
        return self;
    };
}
- (UITextView *(^)(UIView *inputView))njk_inputView{
    return ^(UIView *inputView){
        self.inputView = inputView;
        return self;
    };
}
- (UITextView *(^)(UIView *inputAccessoryView))njk_inputAccessoryView{
    return ^(UIView *inputAccessoryView){
        self.inputAccessoryView = inputAccessoryView;
        return self;
    };
}
- (UITextView *(^)(BOOL clearsOnInsertion))njk_clearsOnInsertion{
    return ^(BOOL clearsOnInsertion){
        self.clearsOnInsertion = clearsOnInsertion;
        return self;
    };
}
- (UITextView *(^)(UIEdgeInsets textContainerInset))njk_textContainerInset{
    return ^(UIEdgeInsets textContainerInset){
        self.textContainerInset = textContainerInset;
        return self;
    };
}
- (UITextView *(^)(NSDictionary<NSAttributedStringKey,id> *linkTextAttributes))njk_linkTextAttributes{
    return ^(NSDictionary<NSAttributedStringKey,id> *linkTextAttributes){
        self.linkTextAttributes = linkTextAttributes;
        return self;
    };
}
- (UITextView *(^)(BOOL usesStandardTextScaling))njk_usesStandardTextScaling API_AVAILABLE(ios(13.0)){
    return ^(BOOL usesStandardTextScaling){
        self.usesStandardTextScaling = usesStandardTextScaling;
        return self;
    };
}

@end
