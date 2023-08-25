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





@interface UIView (Extension)

/**  起点x坐标  */
@property (nonatomic, assign) CGFloat x;
/**  起点y坐标  */
@property (nonatomic, assign) CGFloat y;
/**  中心点x坐标  */
@property (nonatomic, assign) CGFloat centerX;
/**  中心点y坐标  */
@property (nonatomic, assign) CGFloat centerY;
/**  宽度  */
@property (nonatomic, assign) CGFloat width;
/**  高度  */
@property (nonatomic, assign) CGFloat height;
/**  顶部  */
@property (nonatomic, assign) CGFloat top;
/**  底部  */
@property (nonatomic, assign) CGFloat bottom;
/**  左边  */
@property (nonatomic, assign) CGFloat left;
/**  右边  */
@property (nonatomic, assign) CGFloat right;
/**  size  */
@property (nonatomic, assign) CGSize size;
/**  origin */
@property (nonatomic, assign) CGPoint origin;
/**  最大x坐标 */
- (CGFloat)maxX;
/**  最大y坐标 */
- (CGFloat)maxY;


/**  设置圆角  */
- (void)rounded:(CGFloat)cornerRadius;

/**  设置圆角和边框  */
- (void)rounded:(CGFloat)cornerRadius width:(CGFloat)borderWidth color:(UIColor *)borderColor;

/**  设置边框  */
- (void)border:(CGFloat)borderWidth color:(UIColor *)borderColor;

/**   给哪几个角设置圆角  */
-(void)round:(CGFloat)cornerRadius rectCorners:(UIRectCorner)rectCorner;


/// 给每个角设置不同的radius
/// @param radius 4个值分别为左上、右上、左下、右下
- (void)roundWithRadius:(UIEdgeInsets)radius;
/// 给每个角设置不同的radius
/// @param radius 4个值分别为左上、右上、左下、右下
/// @param borderWidth borderWidth
/// @param borderColor borderColor
- (void)roundWithRadius:(UIEdgeInsets)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

/**  设置阴影  */
-(void)shadow:(UIColor *)shadowColor opacity:(CGFloat)opacity radius:(CGFloat)radius offset:(CGSize)offset;

- (UIViewController *)viewController;

+ (CGFloat)getLabelHeightByWidth:(CGFloat)width Title:(NSString *)title font:(UIFont *)font;

- (id)removeSubviews;

@end


NS_ASSUME_NONNULL_END
