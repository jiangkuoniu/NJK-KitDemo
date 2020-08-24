//
//  UILabel+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UILabel (NJKChain)

- (UILabel *(^)(NSString *string))njk_text;
- (UILabel *(^)(UIFont *font))njk_font;
- (UILabel *(^)(UIColor *color))njk_textColor;
- (UILabel *(^)(UIColor *shadowColor))njk_shadowColor;
- (UILabel *(^)(CGSize shadowOffset))njk_shadowOffset;
- (UILabel *(^)(NSTextAlignment textAlignment))njk_textAlignment;
- (UILabel *(^)(NSLineBreakMode lineBreakMode))njk_lineBreakMode;
- (UILabel *(^)(NSAttributedString *attributedText))njk_attributedText;
- (UILabel *(^)(UIColor *highlightedTextColor))njk_highlightedTextColor;
- (UILabel *(^)(BOOL highlighted))njk_highlighted;
- (UILabel *(^)(BOOL userInteractionEnabled))njk_userInteractionEnabled;
- (UILabel *(^)(BOOL enabled))njk_enabled;
- (UILabel *(^)(NSInteger numberOfLines))njk_numberOfLines;
- (UILabel *(^)(BOOL adjustsFontSizeToFitWidth))njk_adjustsFontSizeToFitWidth;
- (UILabel *(^)(BOOL minimumScaleFactor))njk_minimumScaleFactor;

@end

NS_ASSUME_NONNULL_END
