//
//  UILabel+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UILabel+NJKChain.h"

@implementation UILabel (NJKChain)

- (UILabel *(^)(NSString *string))njk_text{
    return ^(NSString *string){
        self.text = string;
        return self;
    };
}
- (UILabel *(^)(UIFont *font))njk_font{
    return ^(UIFont *font){
        self.font = font;
        return self;
    };
}
- (UILabel *(^)(UIColor *color))njk_textColor{
    return ^id(UIColor *color){
        self.textColor = color;
        return self;
    };
}
- (UILabel *(^)(UIColor *shadowColor))njk_shadowColor{
    return ^id(UIColor *shadowColor){
        self.shadowColor = shadowColor;
        return self;
    };
}
- (UILabel *(^)(CGSize shadowOffset))njk_shadowOffset{
    return ^id(CGSize shadowOffset){
        self.shadowOffset = shadowOffset;
        return self;
    };
}
- (UILabel *(^)(NSTextAlignment textAlignment))njk_textAlignment{
    return ^id(NSTextAlignment textAlignment){
        self.textAlignment = textAlignment;
        return self;
    };
}
- (UILabel *(^)(NSLineBreakMode lineBreakMode))njk_lineBreakMode{
    return ^id(NSLineBreakMode lineBreakMode){
        self.lineBreakMode = lineBreakMode;
        return self;
    };
}
- (UILabel *(^)(NSAttributedString *attributedText))njk_attributedText{
    return ^id(NSAttributedString *attributedText){
        self.attributedText = attributedText;
        return self;
    };
}
- (UILabel *(^)(UIColor *highlightedTextColor))njk_highlightedTextColor{
    return ^id(UIColor *highlightedTextColor){
        self.highlightedTextColor = highlightedTextColor;
        return self;
    };
}
- (UILabel *(^)(BOOL highlighted))njk_highlighted{
    return ^id(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}
- (UILabel *(^)(BOOL userInteractionEnabled))njk_userInteractionEnabled{
    return ^id(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (UILabel *(^)(BOOL enabled))njk_enabled{
    return ^id(BOOL enabled){
        self.enabled = enabled;
        return self;
    };
}
- (UILabel *(^)(NSInteger numberOfLines))njk_numberOfLines{
    return ^id(NSInteger numberOfLines){
        self.numberOfLines = numberOfLines;
        return self;
    };
}
- (UILabel *(^)(BOOL adjustsFontSizeToFitWidth))njk_adjustsFontSizeToFitWidth{
    return ^id(BOOL adjustsFontSizeToFitWidth){
        self.adjustsFontSizeToFitWidth = adjustsFontSizeToFitWidth;
        return self;
    };
}
- (UILabel *(^)(BOOL minimumScaleFactor))njk_minimumScaleFactor{
    return ^id(BOOL minimumScaleFactor){
        self.minimumScaleFactor = minimumScaleFactor;
        return self;
    };
}

@end
