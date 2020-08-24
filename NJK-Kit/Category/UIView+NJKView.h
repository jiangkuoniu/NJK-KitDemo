//
//  UIView+NJKView.h
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, LeShadowPathType)
{
    LeShadowPathTop = 0,//只有顶端有
    LeShadowPathBottom,
    LeShadowPathLeft,
    LeShadowPathRight,
    LeShadowPathCommon,//只有顶端没有
    LeShadowPathAround,
};

@interface UIView (NJKView)

/// 给view设置阴影
/// @param shadowColor 阴影颜色
/// @param shadowOpacity 阴影透明度0-1
/// @param shadowRadius 阴影半径
/// @param shadowPathType 阴影模式
/// @param shadowPathWidth  阴影宽度
- (void)viewShadowPathWithColor:(UIColor *)shadowColor shadowPathType:(LeShadowPathType)shadowPathType shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowPathWidth:(CGFloat)shadowPathWidth;



@end

NS_ASSUME_NONNULL_END
