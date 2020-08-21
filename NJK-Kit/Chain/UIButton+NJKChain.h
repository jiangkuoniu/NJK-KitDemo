//
//  UIButton+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (NJKChain)

- (UIButton *(^)(UIColor *tintColor))njk_tintColor;
- (UIButton *(^)(NSString *__nullable title,UIControlState state))njk_setTitle;
- (UIButton *(^)(UIColor * __nullable color,UIControlState state))njk_setTitleColor;
- (UIButton *(^)(UIColor * __nullable color,UIControlState state))njk_setTitleShadowColor;
- (UIButton *(^)(UIImage * __nullable image,UIControlState state))njk_setImage;
- (UIButton *(^)(UIImage * __nullable image,UIControlState state))njk_setBackgroundImage;
- (UIButton *(^)(NSAttributedString * __nullable title,UIControlState state))njk_setAttributedTitle;

- (UIButton *(^)(UIEdgeInsets contentEdgeInsets))njk_contentEdgeInsets;
- (UIButton *(^)(UIEdgeInsets titleEdgeInsets))njk_titleEdgeInsets;
- (UIButton *(^)(BOOL reversesTitleShadowWhenHighlighted))njk_reversesTitleShadowWhenHighlighted;
- (UIButton *(^)(UIEdgeInsets imageEdgeInsets))njk_imageEdgeInsets;
- (UIButton *(^)(BOOL adjustsImageWhenHighlighted))njk_adjustsImageWhenHighlighted;
- (UIButton *(^)(BOOL adjustsImageWhenDisabled))njk_adjustsImageWhenDisabled;
- (UIButton *(^)(BOOL showsTouchWhenHighlighted))njk_showsTouchWhenHighlighted;

@end

NS_ASSUME_NONNULL_END
