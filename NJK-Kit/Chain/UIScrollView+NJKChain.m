//
//  UIScrollView+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UIScrollView+NJKChain.h"

@implementation UIScrollView (NJKChain)

- (UIScrollView *(^)(CGPoint contentOffset))njk_contentOffset{
    return ^(CGPoint contentOffset){
        self.contentOffset = contentOffset;
        return self;
    };
}
- (UIScrollView *(^)(CGSize contentSize))njk_contentSize{
    return ^(CGSize contentSize){
        self.contentSize = contentSize;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets contentInset))njk_contentInset{
    return ^(UIEdgeInsets contentInset){
        self.contentInset = contentInset;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior))njk_contentInsetAdjustmentBehavior API_AVAILABLE(ios(11.0)){
    return ^(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior){
        self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        return self;
    };
}
- (UIScrollView *(^)(BOOL automaticallyAdjustsScrollIndicatorInsets))njk_automaticallyAdjustsScrollIndicatorInsets API_AVAILABLE(ios(13.0)){
    return ^(BOOL automaticallyAdjustsScrollIndicatorInsets){
        self.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets;
        return self;
    };
}
- (UIScrollView *(^)(BOOL directionalLockEnabled))njk_directionalLockEnabled{
    return ^(BOOL directionalLockEnabled){
        self.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}
- (UIScrollView *(^)(BOOL bounces))njk_bounces{
    return ^(BOOL bounces){
        self.bounces = bounces;
        return self;
    };
}
- (UIScrollView *(^)(BOOL alwaysBounceVertical))njk_alwaysBounceVertical{
    return ^(BOOL alwaysBounceVertical){
        self.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}
- (UIScrollView *(^)(BOOL alwaysBounceHorizontal))njk_alwaysBounceHorizontal{
    return ^(BOOL alwaysBounceHorizontal){
        self.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}
- (UIScrollView *(^)(BOOL pagingEnabled))njk_pagingEnabled{
    return ^(BOOL pagingEnabled){
        self.pagingEnabled = pagingEnabled;
        return self;
    };
}
- (UIScrollView *(^)(BOOL scrollEnabled))njk_scrollEnabled{
    return ^(BOOL scrollEnabled){
        self.scrollEnabled = scrollEnabled;
        return self;
    };
}
- (UIScrollView *(^)(BOOL showsVerticalScrollIndicator))njk_showsVerticalScrollIndicator{
    return ^(BOOL showsVerticalScrollIndicator){
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}
- (UIScrollView *(^)(BOOL showsHorizontalScrollIndicator))njk_showsHorizontalScrollIndicator{
    return ^(BOOL showsHorizontalScrollIndicator){
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewIndicatorStyle indicatorStyle))njk_indicatorStyle{
    return ^(UIScrollViewIndicatorStyle indicatorStyle){
        self.indicatorStyle = indicatorStyle;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets verticalScrollIndicatorInsets))njk_verticalScrollIndicatorInsets API_AVAILABLE(ios(11.1)){
    return ^(UIEdgeInsets verticalScrollIndicatorInsets){
        self.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets horizontalScrollIndicatorInsets))njk_horizontalScrollIndicatorInsets API_AVAILABLE(ios(11.1)){
    return ^(UIEdgeInsets horizontalScrollIndicatorInsets){
        self.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets;
        return self;
    };
}
- (UIScrollView *(^)(UIEdgeInsets scrollIndicatorInsets))njk_scrollIndicatorInsets{
    return ^(UIEdgeInsets scrollIndicatorInsets){
        self.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewDecelerationRate decelerationRate))njk_decelerationRate{
    return ^(UIScrollViewDecelerationRate decelerationRate){
        self.decelerationRate = decelerationRate;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewIndexDisplayMode indexDisplayMode))njk_indexDisplayMode{
    return ^(UIScrollViewIndexDisplayMode indexDisplayMode){
        self.indexDisplayMode = indexDisplayMode;
        return self;
    };
}
- (UIScrollView *(^)(BOOL delaysContentTouches))njk_delaysContentTouches{
    return ^(BOOL delaysContentTouches){
        self.delaysContentTouches = delaysContentTouches;
        return self;
    };
}
- (UIScrollView *(^)(BOOL canCancelContentTouches))njk_canCancelContentTouches{
    return ^(BOOL canCancelContentTouches){
        self.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat minimumZoomScale))njk_minimumZoomScale{
    return ^(CGFloat minimumZoomScale){
        self.minimumZoomScale = minimumZoomScale;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat maximumZoomScale))njk_maximumZoomScale{
    return ^(CGFloat maximumZoomScale){
        self.maximumZoomScale = maximumZoomScale;
        return self;
    };
}
- (UIScrollView *(^)(CGFloat zoomScale))njk_zoomScale{
    return ^(CGFloat zoomScale){
        self.zoomScale = zoomScale;
        return self;
    };
}
- (UIScrollView *(^)(BOOL bouncesZoom))njk_bouncesZoom{
    return ^(BOOL bouncesZoom){
        self.bouncesZoom = bouncesZoom;
        return self;
    };
}
- (UIScrollView *(^)(BOOL scrollsToTop))njk_scrollsToTop{
    return ^(BOOL scrollsToTop){
        self.scrollsToTop = scrollsToTop;
        return self;
    };
}
- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))njk_keyboardDismissMode{
    return ^(UIScrollViewKeyboardDismissMode keyboardDismissMode){
        self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}
- (UIScrollView *(^)(UIRefreshControl *refreshControl))njk_refreshControl API_AVAILABLE(ios(10.0)){
    return ^(UIRefreshControl *refreshControl){
        self.refreshControl = refreshControl;
        return self;
    };
}

@end
