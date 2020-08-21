//
//  UICollectionView+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UICollectionView (NJKChain)

- (UICollectionView *(^)(UICollectionViewLayout *collectionViewLayout))njk_collectionViewLayout;
- (UICollectionView *(^)(id <UICollectionViewDelegate> delegate))njk_delegate;
- (UICollectionView *(^)(id <UICollectionViewDataSource> dataSource))njk_dataSource;
- (UICollectionView *(^)(id <UICollectionViewDataSourcePrefetching> prefetchDataSource))njk_prefetchDataSource API_AVAILABLE(ios(10.0));
- (UICollectionView *(^)(BOOL prefetchingEnabled))njk_prefetchingEnabled API_AVAILABLE(ios(10.0));
- (UICollectionView *(^)(id <UICollectionViewDragDelegate> dragDelegate))njk_dragDelegate API_AVAILABLE(ios(11.0));
- (UICollectionView *(^)(id <UICollectionViewDropDelegate> dropDelegate))njk_dropDelegate API_AVAILABLE(ios(11.0));
- (UICollectionView *(^)(BOOL dragInteractionEnabled))njk_dragInteractionEnabled API_AVAILABLE(ios(11.0));
- (UICollectionView *(^)(UICollectionViewReorderingCadence reorderingCadence))njk_reorderingCadence API_AVAILABLE(ios(11.0));
- (UICollectionView *(^)(UIView *backgroundView))njk_backgroundView;
- (UICollectionView *(^)(BOOL allowsSelection))njk_allowsSelection;
- (UICollectionView *(^)(BOOL allowsMultipleSelection))njk_allowsMultipleSelection;
- (UICollectionView *(^)(BOOL remembersLastFocusedIndexPath))njk_remembersLastFocusedIndexPath;

@end

NS_ASSUME_NONNULL_END
