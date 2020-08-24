//
//  UIScrollView+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIScrollView (NJKChain)

- (UIScrollView *(^)(CGPoint contentOffset))njk_contentOffset;
- (UIScrollView *(^)(CGSize contentSize))njk_contentSize;
- (UIScrollView *(^)(UIEdgeInsets contentInset))njk_contentInset;
- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior))njk_contentInsetAdjustmentBehavior API_AVAILABLE(ios(11.0));
- (UIScrollView *(^)(BOOL automaticallyAdjustsScrollIndicatorInsets))njk_automaticallyAdjustsScrollIndicatorInsets API_AVAILABLE(ios(13.0));
- (UIScrollView *(^)(BOOL directionalLockEnabled))njk_directionalLockEnabled;
- (UIScrollView *(^)(BOOL bounces))njk_bounces;
- (UIScrollView *(^)(BOOL alwaysBounceVertical))njk_alwaysBounceVertical;
- (UIScrollView *(^)(BOOL alwaysBounceHorizontal))njk_alwaysBounceHorizontal;
- (UIScrollView *(^)(BOOL pagingEnabled))njk_pagingEnabled;
- (UIScrollView *(^)(BOOL scrollEnabled))njk_scrollEnabled;
- (UIScrollView *(^)(BOOL showsVerticalScrollIndicator))njk_showsVerticalScrollIndicator;
- (UIScrollView *(^)(BOOL showsHorizontalScrollIndicator))njk_showsHorizontalScrollIndicator;
- (UIScrollView *(^)(UIScrollViewIndicatorStyle indicatorStyle))njk_indicatorStyle;
- (UIScrollView *(^)(UIEdgeInsets verticalScrollIndicatorInsets))njk_verticalScrollIndicatorInsets API_AVAILABLE(ios(11.1));
- (UIScrollView *(^)(UIEdgeInsets horizontalScrollIndicatorInsets))njk_horizontalScrollIndicatorInsets API_AVAILABLE(ios(11.1));
- (UIScrollView *(^)(UIEdgeInsets scrollIndicatorInsets))njk_scrollIndicatorInsets;
- (UIScrollView *(^)(UIScrollViewDecelerationRate decelerationRate))njk_decelerationRate;
- (UIScrollView *(^)(UIScrollViewIndexDisplayMode indexDisplayMode))njk_indexDisplayMode;
- (UIScrollView *(^)(BOOL delaysContentTouches))njk_delaysContentTouches;
- (UIScrollView *(^)(BOOL canCancelContentTouches))njk_canCancelContentTouches;
- (UIScrollView *(^)(CGFloat minimumZoomScale))njk_minimumZoomScale;
- (UIScrollView *(^)(CGFloat maximumZoomScale))njk_maximumZoomScale;
- (UIScrollView *(^)(CGFloat zoomScale))njk_zoomScale;
- (UIScrollView *(^)(BOOL bouncesZoom))njk_bouncesZoom;
- (UIScrollView *(^)(BOOL scrollsToTop))njk_scrollsToTop;
- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))njk_keyboardDismissMode;
- (UIScrollView *(^)(UIRefreshControl *refreshControl))njk_refreshControl API_AVAILABLE(ios(10.0));

@end

NS_ASSUME_NONNULL_END
