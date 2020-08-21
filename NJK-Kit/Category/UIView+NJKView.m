//
//  UIView+NJKView.m
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UIView+NJKView.h"

@implementation UIView (NJKView)

/// 给view设置阴影
/// @param shadowColor 阴影颜色
/// @param shadowOpacity 阴影透明度0-1
/// @param shadowRadius 阴影半径
/// @param shadowPathType 阴影模式
/// @param shadowPathWidth  阴影宽度
- (void)viewShadowPathWithColor:(UIColor *)shadowColor shadowPathType:(LeShadowPathType)shadowPathType shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowPathWidth:(CGFloat)shadowPathWidth{
    
    self.layer.masksToBounds = NO;//必须要等于NO否则会把阴影切割隐藏掉
    self.layer.shadowColor = shadowColor.CGColor;// 阴影颜色
    self.layer.shadowOpacity = shadowOpacity;// 阴影透明度，默认0
    self.layer.shadowOffset = CGSizeZero;//shadowOffset阴影偏移，默认(0, -3),这个跟shadowRadius配合使用
    self.layer.shadowRadius = shadowRadius;//阴影半径，默认3
    CGRect shadowRect = CGRectZero;
    CGFloat originX,originY,sizeWith,sizeHeight;
    originX = 0;
    originY = 0;
    sizeWith = self.bounds.size.width;
    sizeHeight = self.bounds.size.height;
    
    if (shadowPathType == LeShadowPathTop) {
        shadowRect = CGRectMake(originX, originY-shadowPathWidth/2, sizeWith, shadowPathWidth);
    }else if (shadowPathType == LeShadowPathBottom){
        shadowRect = CGRectMake(originY, sizeHeight-shadowPathWidth/2, sizeWith, shadowPathWidth);
    }else if (shadowPathType == LeShadowPathLeft){
        shadowRect = CGRectMake(originX-shadowPathWidth/2, originY, shadowPathWidth, sizeHeight);
    }else if (shadowPathType == LeShadowPathRight){
        shadowRect = CGRectMake(sizeWith-shadowPathWidth/2, originY, shadowPathWidth, sizeHeight);
    }else if (shadowPathType == LeShadowPathCommon){
        shadowRect = CGRectMake(originX-shadowPathWidth/2, 2, sizeWith+shadowPathWidth, sizeHeight+shadowPathWidth/2);
    }else if (shadowPathType == LeShadowPathAround){
        shadowRect = CGRectMake(originX-shadowPathWidth/2, originY-shadowPathWidth/2, sizeWith+shadowPathWidth, sizeHeight+shadowPathWidth);
    }
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRect:shadowRect];
    self.layer.shadowPath = bezierPath.CGPath;//阴影路径
}

//获取view的截图
- (UIImage *)getViewImage{
    if ([self isKindOfClass:[UIScrollView class]]) {
        UIScrollView *scrollView = (UIScrollView *)self;
        UIImage *image = nil;
        UIGraphicsBeginImageContextWithOptions(scrollView.contentSize, NO, 0.0);
        {
            CGPoint savedContentOffset = scrollView.contentOffset;
            CGRect savedFrame = scrollView.frame;
            scrollView.frame = CGRectMake(0 , 0, scrollView.contentSize.width, scrollView.contentSize.height);
            
            [scrollView.layer renderInContext:UIGraphicsGetCurrentContext()];
            image = UIGraphicsGetImageFromCurrentImageContext();
            
            scrollView.contentOffset = savedContentOffset;
            scrollView.frame = savedFrame;
        }
        UIGraphicsEndImageContext();
        
        if (image != nil) {
            return image;
        }
        return nil;
    }else{
        UIGraphicsBeginImageContext(self.frame.size);
        [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
        UIImage *image =  UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        return image;
    }
}
//获取不失真view的截图
- (UIImage *)getClearViewImage{
    CGSize s = self.bounds.size;
    // 下面方法，第一个参数表示区域大小。第二个参数表示是否是非透明的。如果需要显示半透明效果，需要传NO，否则传YES。第三个参数就是屏幕密度了
    UIGraphicsBeginImageContextWithOptions(s, NO, [UIScreen mainScreen].scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage*image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
