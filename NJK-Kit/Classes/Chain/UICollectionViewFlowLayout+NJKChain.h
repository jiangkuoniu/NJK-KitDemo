//
//  UICollectionViewFlowLayout+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionViewFlowLayout (NJKChain)

- (UICollectionViewFlowLayout *(^)(CGFloat minimumLineSpacing))njk_minimumLineSpacing;
- (UICollectionViewFlowLayout *(^)(CGFloat minimumInteritemSpacing))njk_minimumInteritemSpacing;
- (UICollectionViewFlowLayout *(^)(CGSize itemSize))njk_itemSize;
- (UICollectionViewFlowLayout *(^)(CGSize estimatedItemSize))njk_estimatedItemSize;
- (UICollectionViewFlowLayout *(^)(UICollectionViewScrollDirection scrollDirection))njk_scrollDirection;
- (UICollectionViewFlowLayout *(^)(CGSize headerReferenceSize))njk_headerReferenceSize;
- (UICollectionViewFlowLayout *(^)(CGSize footerReferenceSize))njk_footerReferenceSize;
- (UICollectionViewFlowLayout *(^)(UIEdgeInsets sectionInset))njk_sectionInset;
- (UICollectionViewFlowLayout *(^)(UICollectionViewFlowLayoutSectionInsetReference sectionInsetReference))njk_sectionInsetReference API_AVAILABLE(ios(11.0));
- (UICollectionViewFlowLayout *(^)(BOOL sectionHeadersPinToVisibleBounds))njk_sectionHeadersPinToVisibleBounds;
- (UICollectionViewFlowLayout *(^)(BOOL sectionFootersPinToVisibleBounds))njk_sectionFootersPinToVisibleBounds;

@end

NS_ASSUME_NONNULL_END
