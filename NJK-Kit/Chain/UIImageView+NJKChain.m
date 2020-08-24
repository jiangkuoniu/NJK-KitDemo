//
//  UIImageView+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UIImageView+NJKChain.h"

@implementation UIImageView (NJKChain)

- (UIImageView *(^)(UIImage *image))njk_image{
    return ^(UIImage *image){
        self.image = image;
        return self;
    };
}
- (UIImageView *(^)(UIImage *highlightedImage))njk_highlightedImage{
    return ^(UIImage *highlightedImage){
        self.highlightedImage = highlightedImage;
        return self;
    };
}
- (UIImageView *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))njk_preferredSymbolConfiguration API_AVAILABLE(ios(13.0)){
    return ^(UIImageSymbolConfiguration *preferredSymbolConfiguration){
        self.preferredSymbolConfiguration = preferredSymbolConfiguration;
        return self;
    };
}
- (UIImageView *(^)(BOOL userInteractionEnabled))njk_userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (UIImageView *(^)(BOOL highlighted))njk_highlighted{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}
- (UIImageView *(^)(NSArray<UIImage *> *animationImages))njk_animationImages{
    return ^(NSArray<UIImage *> *animationImages){
        self.animationImages = animationImages;
        return self;
    };
}
- (UIImageView *(^)(NSArray<UIImage *> *highlightedAnimationImages))njk_highlightedAnimationImages{
    return ^(NSArray<UIImage *> *highlightedAnimationImages){
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}
- (UIImageView *(^)(NSTimeInterval animationDuration))njk_animationDuration{
    return ^(NSTimeInterval animationDuration){
        self.animationDuration = animationDuration;
        return self;
    };
}
- (UIImageView *(^)(NSInteger animationRepeatCount))njk_animationRepeatCount{
    return ^(NSInteger animationRepeatCount){
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}
- (UIImageView *(^)(UIColor *tintColor))njk_tintColor{
    return ^(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}

@end
