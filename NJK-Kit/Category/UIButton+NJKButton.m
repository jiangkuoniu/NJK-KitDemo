//
//  UIButton+NJKButton.m
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UIButton+NJKButton.h"

#import <objc/runtime.h>

@implementation UIButton (NJKButton)

static char topNameKey;
static char rightNameKey;
static char bottomNameKey;
static char leftNameKey;

/**  扩大buuton点击范围  */
- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left{
    objc_setAssociatedObject(self, &topNameKey,     [NSNumber numberWithFloat:top],     OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightNameKey,   [NSNumber numberWithFloat:right],   OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &bottomNameKey,  [NSNumber numberWithFloat:bottom],  OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftNameKey,    [NSNumber numberWithFloat:left],    OBJC_ASSOCIATION_COPY_NONATOMIC);
}
- (CGRect)enlargedRect {
    NSNumber* topEdge = objc_getAssociatedObject(self, &topNameKey);
    NSNumber* rightEdge = objc_getAssociatedObject(self, &rightNameKey);
    NSNumber* bottomEdge = objc_getAssociatedObject(self, &bottomNameKey);
    NSNumber* leftEdge = objc_getAssociatedObject(self, &leftNameKey);
    if (topEdge && rightEdge && bottomEdge && leftEdge) {
        return CGRectMake(self.bounds.origin.x - leftEdge.floatValue,
                          self.bounds.origin.y - topEdge.floatValue,
                          self.bounds.size.width + leftEdge.floatValue + rightEdge.floatValue,
                          self.bounds.size.height + topEdge.floatValue + bottomEdge.floatValue);
    } else {
        return self.bounds;
    }
}

- (UIView*)hitTest:(CGPoint)point withEvent:(UIEvent*)event {
    CGRect rect = [self enlargedRect];
    //如果按钮设置为不可点击、隐藏、透明度小于等于0.01或者点击在按钮内部，则直接执行父类方法
    if (CGRectEqualToRect(rect, self.bounds) || self.userInteractionEnabled == NO || self.hidden == YES || self.alpha <= 0.01) {
        return [super hitTest:point withEvent:event];
    }
    //判断点击是否在放大的范围内
    return CGRectContainsPoint(rect, point) ? self : nil;
}

- (void)imageChangeWhere:(ImageMoveType)moveType WithSpace:(CGFloat)space{
    CGFloat imageWidth = self.imageView.bounds.size.width;
    CGFloat imageHeight = self.imageView.bounds.size.height;
    CGFloat labelWidth = self.titleLabel.bounds.size.width;
    CGFloat labeHeight = self.titleLabel.bounds.size.height;
    
    CGFloat widthAdd = 0;
    
    CGSize titleSize = [self.titleLabel.text boundingRectWithSize:CGSizeMake(MAXFLOAT, 30)
                                             options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                          attributes:@{NSFontAttributeName:self.titleLabel.font}
                                             context:nil].size;
    
    if (titleSize.width > labelWidth) {
        widthAdd = (titleSize.width - labelWidth)/2;
    }
    
    if (moveType == 0) {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, space/2, 0, -space/2)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, -space/2, 0, space/2)];
    }
    else if (moveType == 1)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(-imageHeight/2 - space/2, -imageWidth/2 - widthAdd, imageHeight/2 + space/2, imageWidth/2 - widthAdd)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(labeHeight/2 + space/2, labelWidth/2, -labeHeight/2 - space/2, -labelWidth/2)];
    }
    else if (moveType == 2)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imageWidth-space, 0, imageWidth)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth)];
    }
    else if (moveType == 3)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(imageHeight/2 + space/2, -imageWidth/2 - widthAdd, -imageHeight/2 - space/2, imageWidth/2 - widthAdd)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(-labeHeight/2 - space/2, labelWidth/2, labeHeight/2 + space/2, -labelWidth/2)];
    }
}


@end
