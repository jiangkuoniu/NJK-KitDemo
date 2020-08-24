//
//  UIButton+NJKButton.h
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, ImageMoveType)
{
    ImageMoveTypeLeft = 0,
    ImageMoveTypeBelow,
    ImageMoveTypeRight,
    ImageMoveTypeTop,
};

@interface UIButton (NJKButton)

- (void)imageChangeWhere:(ImageMoveType)moveType WithSpace:(CGFloat)space;
- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;

@end

NS_ASSUME_NONNULL_END
