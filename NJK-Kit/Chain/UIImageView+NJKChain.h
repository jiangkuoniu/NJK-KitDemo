//
//  UIImageView+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImageView (NJKChain)

- (UIImageView *(^)(UIImage *image))njk_image;
- (UIImageView *(^)(UIImage *highlightedImage))njk_highlightedImage;
- (UIImageView *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))njk_preferredSymbolConfiguration API_AVAILABLE(ios(13.0));
- (UIImageView *(^)(BOOL userInteractionEnabled))njk_userInteractionEnabled;
- (UIImageView *(^)(BOOL highlighted))njk_highlighted;
- (UIImageView *(^)(NSArray<UIImage *> *animationImages))njk_animationImages;
- (UIImageView *(^)(NSArray<UIImage *> *highlightedAnimationImages))njk_highlightedAnimationImages;
- (UIImageView *(^)(NSTimeInterval animationDuration))njk_animationDuration;
- (UIImageView *(^)(NSInteger animationRepeatCount))njk_animationRepeatCount;
- (UIImageView *(^)(UIColor *tintColor))njk_tintColor;

@end

NS_ASSUME_NONNULL_END
