//
//  UICollectionViewFlowLayout+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UICollectionViewFlowLayout+NJKChain.h"

@implementation UICollectionViewFlowLayout (NJKChain)

- (UICollectionViewFlowLayout *(^)(CGFloat minimumLineSpacing))njk_minimumLineSpacing{
    return ^(CGFloat minimumLineSpacing){
        self.minimumLineSpacing = minimumLineSpacing;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGFloat minimumInteritemSpacing))njk_minimumInteritemSpacing{
    return ^(CGFloat minimumInteritemSpacing){
        self.minimumInteritemSpacing = minimumInteritemSpacing;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize itemSize))njk_itemSize{
    return ^(CGSize itemSize){
        self.itemSize = itemSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize estimatedItemSize))njk_estimatedItemSize{
    return ^(CGSize estimatedItemSize){
        self.estimatedItemSize = estimatedItemSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(UICollectionViewScrollDirection scrollDirection))njk_scrollDirection{
    return ^(UICollectionViewScrollDirection scrollDirection){
        self.scrollDirection = scrollDirection;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize headerReferenceSize))njk_headerReferenceSize{
    return ^(CGSize headerReferenceSize){
        self.headerReferenceSize = headerReferenceSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(CGSize footerReferenceSize))njk_footerReferenceSize{
    return ^(CGSize footerReferenceSize){
        self.footerReferenceSize = footerReferenceSize;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(UIEdgeInsets sectionInset))njk_sectionInset{
    return ^(UIEdgeInsets sectionInset){
        self.sectionInset = sectionInset;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(UICollectionViewFlowLayoutSectionInsetReference sectionInsetReference))njk_sectionInsetReference API_AVAILABLE(ios(11.0)){
    return ^(UICollectionViewFlowLayoutSectionInsetReference sectionInsetReference){
        self.sectionInsetReference = sectionInsetReference;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(BOOL sectionHeadersPinToVisibleBounds))njk_sectionHeadersPinToVisibleBounds{
    return ^(BOOL sectionHeadersPinToVisibleBounds){
        self.sectionHeadersPinToVisibleBounds = sectionHeadersPinToVisibleBounds;
        return self;
    };
}
- (UICollectionViewFlowLayout *(^)(BOOL sectionFootersPinToVisibleBounds))njk_sectionFootersPinToVisibleBounds{
    return ^(BOOL sectionFootersPinToVisibleBounds){
        self.sectionFootersPinToVisibleBounds = sectionFootersPinToVisibleBounds;
        return self;
    };
}

@end
