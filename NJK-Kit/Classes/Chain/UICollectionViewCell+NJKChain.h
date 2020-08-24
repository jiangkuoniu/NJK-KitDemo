//
//  UICollectionViewCell+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionViewCell (NJKChain)

- (UICollectionViewCell *(^)(BOOL selected))njk_selected;
- (UICollectionViewCell *(^)(BOOL highlighted))njk_highlighted;
- (UICollectionViewCell *(^)(UIView *backgroundView))njk_backgroundView;
- (UICollectionViewCell *(^)(UIView *selectedBackgroundView))njk_selectedBackgroundView;

@end

NS_ASSUME_NONNULL_END
