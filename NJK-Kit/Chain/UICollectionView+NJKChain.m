//
//  UICollectionView+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UICollectionView+NJKChain.h"

@implementation UICollectionView (NJKChain)

- (UICollectionView *(^)(UICollectionViewLayout *collectionViewLayout))njk_collectionViewLayout{
    return ^(UICollectionViewLayout *collectionViewLayout){
        self.collectionViewLayout = collectionViewLayout;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDelegate> delegate))njk_delegate{
    return ^(id <UICollectionViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDataSource> dataSource))njk_dataSource{
    return ^(id <UICollectionViewDataSource> dataSource){
        self.dataSource = dataSource;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDataSourcePrefetching> prefetchDataSource))njk_prefetchDataSource API_AVAILABLE(ios(10.0)){
    return ^(id <UICollectionViewDataSourcePrefetching> prefetchDataSource){
        self.prefetchDataSource = prefetchDataSource;
        return self;
    };
}
- (UICollectionView *(^)(BOOL prefetchingEnabled))njk_prefetchingEnabled API_AVAILABLE(ios(10.0)){
    return ^(BOOL prefetchingEnabled){
        self.prefetchingEnabled = prefetchingEnabled;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDragDelegate> dragDelegate))njk_dragDelegate API_AVAILABLE(ios(11.0)){
    return ^(id <UICollectionViewDragDelegate> dragDelegate){
        self.dragDelegate = dragDelegate;
        return self;
    };
}
- (UICollectionView *(^)(id <UICollectionViewDropDelegate> dropDelegate))njk_dropDelegate API_AVAILABLE(ios(11.0)){
    return ^(id <UICollectionViewDropDelegate> dropDelegate){
        self.dropDelegate = dropDelegate;
        return self;
    };
}
- (UICollectionView *(^)(BOOL dragInteractionEnabled))njk_dragInteractionEnabled API_AVAILABLE(ios(11.0)){
    return ^(BOOL dragInteractionEnabled){
        self.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}
- (UICollectionView *(^)(UICollectionViewReorderingCadence reorderingCadence))njk_reorderingCadence API_AVAILABLE(ios(11.0)){
    return ^(UICollectionViewReorderingCadence reorderingCadence){
        self.reorderingCadence = reorderingCadence;
        return self;
    };
}
- (UICollectionView *(^)(UIView *backgroundView))njk_backgroundView{
    return ^(UIView *backgroundView){
        self.backgroundView = backgroundView;
        return self;
    };
}
- (UICollectionView *(^)(BOOL allowsSelection))njk_allowsSelection{
    return ^(BOOL allowsSelection){
        self.allowsSelection = allowsSelection;
        return self;
    };
}
- (UICollectionView *(^)(BOOL allowsMultipleSelection))njk_allowsMultipleSelection{
    return ^(BOOL allowsMultipleSelection){
        self.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}
- (UICollectionView *(^)(BOOL remembersLastFocusedIndexPath))njk_remembersLastFocusedIndexPath{
    return ^(BOOL remembersLastFocusedIndexPath){
        self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}

@end
