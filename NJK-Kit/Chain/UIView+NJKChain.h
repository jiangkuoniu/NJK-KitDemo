//
//  UIView+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (NJKChain)

- (UIView *(^)(CGRect frame))njk_frame;
- (UIView *(^)(UIColor *color))njk_backgroundColor;
- (UIView *(^)(BOOL hidden))njk_hidden;
- (UIView *(^)(CGFloat alpha))njk_alpha;
- (UIView *(^)(CGRect bounds))njk_bounds;
- (UIView *(^)(CGPoint center))njk_center;
- (UIView *(^)(UIViewContentMode contentMode))njk_contentMode;
- (UIView *(^)(BOOL userInteractionEnabled))njk_userInteractionEnabled;
- (UIView *(^)(NSInteger tag))njk_tag;
- (UIView *(^)(BOOL clipsToBounds))njk_clipsToBounds;
- (UIView *(^)(BOOL clipsToBounds))njk_opaque;
- (UIView *(^)(UIColor *tintColor))njk_tintColor;
- (UIView *(^)(BOOL clearsContextBeforeDrawing))njk_clearsContextBeforeDrawing;
- (UIView *(^)(UIView *maskView))njk_maskView;

- (UIView *(^)(CGAffineTransform transform))njk_transform;
- (UIView *(^)(CATransform3D transform3D))njk_transform3D API_AVAILABLE(ios(12.0));
- (UIView *(^)(CGFloat contentScaleFactor))njk_contentScaleFactor;
- (UIView *(^)(BOOL multipleTouchEnabled))njk_multipleTouchEnabled;
- (UIView *(^)(BOOL exclusiveTouch))njk_exclusiveTouch;
- (UIView *(^)(BOOL autoresizesSubviews))njk_autoresizesSubviews;
- (UIView *(^)(UIViewAutoresizing autoresizingMask))njk_autoresizingMask;
- (UIView *(^)(UISemanticContentAttribute semanticContentAttribute))njk_semanticContentAttribute;

@end

NS_ASSUME_NONNULL_END
