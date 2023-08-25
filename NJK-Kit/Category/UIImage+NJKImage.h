//
//  UIImage+NJKImage.h
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (NJKImage)

@property(nonatomic, assign)NSInteger tag;
/**
 旋转图片
 @param orientation 旋转属性
 @return UIImageu
 */
- (UIImage *)rotation:(UIImageOrientation)orientation;

@end





@interface UIImage (YXGIF)

+ (UIImage *)yx_animatedGIFNamed:(NSString *)name;
+ (UIImage *)yx_animatedGIFWithData:(NSData *)data;
- (UIImage *)yx_animatedImageByScalingAndCroppingToSize:(CGSize)size;

@end

NS_ASSUME_NONNULL_END
