//
//  UIButton+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UIButton+NJKChain.h"

@implementation UIButton (NJKChain)

- (UIButton *(^)(UIColor *tintColor))njk_tintColor{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}
- (UIButton *(^)(NSString *__nullable title,UIControlState state))njk_setTitle{
    return ^(NSString *__nullable title,UIControlState state){
        [self setTitle:title forState:state];
        return self;
    };
}
- (UIButton *(^)(UIColor * __nullable color,UIControlState state))njk_setTitleColor{
    return ^(UIColor * __nullable color,UIControlState state){
        [self setTitleColor:color forState:state];
        return self;
    };
}
- (UIButton *(^)(UIColor * __nullable color,UIControlState state))njk_setTitleShadowColor{
    return ^(UIColor * __nullable color,UIControlState state){
        [self setTitleShadowColor:color forState:state];
        return self;
    };
}
- (UIButton *(^)(UIImage * __nullable image,UIControlState state))njk_setImage{
    return ^(UIImage * __nullable image,UIControlState state){
        [self setImage:image forState:state];
        return self;
    };
}
- (UIButton *(^)(UIImage * __nullable image,UIControlState state))njk_setBackgroundImage{
    return ^(UIImage * __nullable image,UIControlState state){
        [self setBackgroundImage:image forState:state];
        return self;
    };
}
- (UIButton *(^)(NSAttributedString * __nullable title,UIControlState state))njk_setAttributedTitle{
    return ^(NSAttributedString * __nullable title,UIControlState state){
        [self setAttributedTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets contentEdgeInsets))njk_contentEdgeInsets{
    return ^(UIEdgeInsets contentEdgeInsets){
        self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets titleEdgeInsets))njk_titleEdgeInsets{
    return ^(UIEdgeInsets titleEdgeInsets){
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(BOOL reversesTitleShadowWhenHighlighted))njk_reversesTitleShadowWhenHighlighted{
    return ^(BOOL reversesTitleShadowWhenHighlighted){
        self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}
- (UIButton *(^)(UIEdgeInsets imageEdgeInsets))njk_imageEdgeInsets{
    return ^(UIEdgeInsets imageEdgeInsets){
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}
- (UIButton *(^)(BOOL adjustsImageWhenHighlighted))njk_adjustsImageWhenHighlighted{
    return ^(BOOL adjustsImageWhenHighlighted){
        self.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}
- (UIButton *(^)(BOOL adjustsImageWhenDisabled))njk_adjustsImageWhenDisabled{
    return ^(BOOL adjustsImageWhenDisabled){
        self.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}
- (UIButton *(^)(BOOL showsTouchWhenHighlighted))njk_showsTouchWhenHighlighted{
    return ^(BOOL showsTouchWhenHighlighted){
        self.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}

@end
