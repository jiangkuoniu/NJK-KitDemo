//
//  UITextView+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextView (NJKChain)

- (UITextView *(^)(NSString *text))njk_text;
- (UITextView *(^)(UIFont *font))njk_font;
- (UITextView *(^)(UIColor *textColor))njk_textColor;
- (UITextView *(^)(NSTextAlignment textAlignment))njk_textAlignment;
- (UITextView *(^)(NSRange selectedRange))njk_selectedRange;
- (UITextView *(^)(BOOL selectedRange))njk_editable;
- (UITextView *(^)(BOOL selectable))njk_selectable;
- (UITextView *(^)(UIDataDetectorTypes dataDetectorTypes))njk_dataDetectorTypes;
- (UITextView *(^)(BOOL allowsEditingTextAttributes))njk_allowsEditingTextAttributes;
- (UITextView *(^)(NSAttributedString *attributedText))njk_attributedText;
- (UITextView *(^)(NSDictionary<NSAttributedStringKey, id> *typingAttributes))njk_typingAttributes;
- (UITextView *(^)(UIView *inputView))njk_inputView;
- (UITextView *(^)(UIView *inputAccessoryView))njk_inputAccessoryView;
- (UITextView *(^)(BOOL clearsOnInsertion))njk_clearsOnInsertion;
- (UITextView *(^)(UIEdgeInsets textContainerInset))njk_textContainerInset;
- (UITextView *(^)(NSDictionary<NSAttributedStringKey,id> *linkTextAttributes))njk_linkTextAttributes;
- (UITextView *(^)(BOOL usesStandardTextScaling))njk_usesStandardTextScaling API_AVAILABLE(ios(13.0));

@end

NS_ASSUME_NONNULL_END
