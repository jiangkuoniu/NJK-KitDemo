//
//  UIView+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UIView+NJKChain.h"

@implementation UIView (NJKChain)

- (UIView *(^)(CGRect frame))njk_frame{
    return ^id(CGRect frame){
        self.frame = frame;
        return self;
    };
}
- (UIView *(^)(UIColor *color))njk_backgroundColor{
    return ^id(UIColor *color){
        self.backgroundColor = color;
        return self;
    };
}
- (UIView *(^)(BOOL hidden))njk_hidden{
    return ^id(BOOL hidden){
        self.hidden = hidden;
        return self;
    };
}
- (UIView *(^)(CGFloat alpha))njk_alpha{
    return ^id(CGFloat alpha){
        self.alpha = alpha;
        return self;
    };
}
- (UIView *(^)(CGRect bounds))njk_bounds{
    return ^id(CGRect bounds){
        self.bounds = bounds;
        return self;
    };
}
- (UIView *(^)(CGPoint center))njk_center{
    return ^id(CGPoint center){
        self.center = center;
        return self;
    };
}
- (UIView *(^)(UIViewContentMode contentMode))njk_contentMode{
    return ^(UIViewContentMode contentMode){
        self.contentMode = contentMode;
        return self;
    };
}
- (UIView *(^)(BOOL userInteractionEnabled))njk_userInteractionEnabled{
    return ^(BOOL userInteractionEnabled){
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}
- (UIView *(^)(NSInteger tag))njk_tag{
    return ^(NSInteger tag){
        self.tag = tag;
        return self;
    };
}
- (UIView *(^)(BOOL clipsToBounds))njk_clipsToBounds{
    return ^(BOOL clipsToBounds){
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}
- (UIView *(^)(BOOL clipsToBounds))njk_opaque{
    return ^(BOOL opaque){
        self.opaque = opaque;
        return self;
    };
}
- (UIView *(^)(UIColor *tintColor))njk_tintColor{
    return ^id(UIColor *tintColor){
        self.tintColor = tintColor;
        return self;
    };
}
- (UIView *(^)(BOOL clearsContextBeforeDrawing))njk_clearsContextBeforeDrawing{
    return ^(BOOL clearsContextBeforeDrawing){
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}
- (UIView *(^)(UIView *maskView))njk_maskView{
    return ^(UIView *maskView){
        self.maskView = maskView;
        return self;
    };
}

- (UIView *(^)(CGAffineTransform transform))njk_transform{
    return ^id(CGAffineTransform transform){
        self.transform = transform;
        return self;
    };
}
- (UIView *(^)(CATransform3D transform3D))njk_transform3D API_AVAILABLE(ios(12.0)){
    return ^id(CATransform3D transform3D){
        self.transform3D = transform3D;
        return self;
    };
}
- (UIView *(^)(CGFloat contentScaleFactor))njk_contentScaleFactor{
    return ^id(CGFloat contentScaleFactor){
        self.contentScaleFactor = contentScaleFactor;
        return self;
    };
}
- (UIView *(^)(BOOL multipleTouchEnabled))njk_multipleTouchEnabled{
    return ^(BOOL multipleTouchEnabled){
        self.multipleTouchEnabled = multipleTouchEnabled;
        return self;
    };
}
- (UIView *(^)(BOOL exclusiveTouch))njk_exclusiveTouch{
    return ^(BOOL exclusiveTouch){
        self.exclusiveTouch = exclusiveTouch;
        return self;
    };
}
- (UIView *(^)(BOOL autoresizesSubviews))njk_autoresizesSubviews{
    return ^(BOOL autoresizesSubviews){
        self.autoresizesSubviews = autoresizesSubviews;
        return self;
    };
}
- (UIView *(^)(UIViewAutoresizing autoresizingMask))njk_autoresizingMask{
    return ^(UIViewAutoresizing autoresizingMask){
        self.autoresizingMask = autoresizingMask;
        return self;
    };
}
- (UIView *(^)(UISemanticContentAttribute semanticContentAttribute))njk_semanticContentAttribute{
    return ^(UISemanticContentAttribute semanticContentAttribute){
        self.semanticContentAttribute = semanticContentAttribute;
        return self;
    };
}

@end
