//
//  UITableView+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableView (NJKChain)

- (UITableView *(^)(id <UITableViewDataSource> dataSource))njk_dataSource;
- (UITableView *(^)(id <UITableViewDelegate> delegate))njk_delegate;
- (UITableView *(^)(id <UITableViewDataSourcePrefetching> prefetchDataSource))njk_prefetchDataSource API_AVAILABLE(ios(10.0));
- (UITableView *(^)(id <UITableViewDragDelegate> dragDelegate))njk_dragDelegate API_AVAILABLE(ios(11.0));
- (UITableView *(^)(id <UITableViewDropDelegate> dropDelegate))njk_dropDelegate API_AVAILABLE(ios(11.0));
- (UITableView *(^)(CGFloat rowHeight))njk_rowHeight;
- (UITableView *(^)(CGFloat sectionHeaderHeight))njk_sectionHeaderHeight;
- (UITableView *(^)(CGFloat sectionFooterHeight))njk_sectionFooterHeight;
- (UITableView *(^)(CGFloat estimatedRowHeight))njk_estimatedRowHeight;
- (UITableView *(^)(CGFloat estimatedSectionHeaderHeight))njk_estimatedSectionHeaderHeight;
- (UITableView *(^)(CGFloat estimatedSectionFooterHeight))njk_estimatedSectionFooterHeight;
- (UITableView *(^)(UIEdgeInsets separatorInset))njk_separatorInset;
- (UITableView *(^)(UITableViewSeparatorInsetReference separatorInsetReference))njk_separatorInsetReference API_AVAILABLE(ios(11.0));
- (UITableView *(^)(UIView *backgroundView))njk_backgroundView;
- (UITableView *(^)(BOOL editing))njk_editing;
- (UITableView *(^)(BOOL allowsSelection))njk_allowsSelection;
- (UITableView *(^)(BOOL allowsSelectionDuringEditing))njk_allowsSelectionDuringEditing;
- (UITableView *(^)(BOOL allowsMultipleSelection))njk_allowsMultipleSelection;
- (UITableView *(^)(BOOL allowsMultipleSelectionDuringEditing))njk_allowsMultipleSelectionDuringEditing;
- (UITableView *(^)(NSInteger sectionIndexMinimumDisplayRowCount))njk_sectionIndexMinimumDisplayRowCount;
- (UITableView *(^)(UIColor *sectionIndexColor))njk_sectionIndexColor;
- (UITableView *(^)(UIColor *sectionIndexBackgroundColor))njk_sectionIndexBackgroundColor;
- (UITableView *(^)(UIColor *sectionIndexTrackingBackgroundColor))njk_sectionIndexTrackingBackgroundColor;
- (UITableView *(^)(UITableViewCellSeparatorStyle separatorStyle))njk_separatorStyle;
- (UITableView *(^)(UIColor *separatorColor))njk_separatorColor;
- (UITableView *(^)(UIVisualEffect *separatorEffect))njk_separatorEffect;
- (UITableView *(^)(BOOL cellLayoutMarginsFollowReadableWidth))njk_cellLayoutMarginsFollowReadableWidth;
- (UITableView *(^)(BOOL insetsContentViewsToSafeArea))njk_insetsContentViewsToSafeArea API_AVAILABLE(ios(11.0));
- (UITableView *(^)(UIView *tableHeaderView))njk_tableHeaderView;
- (UITableView *(^)(UIView *tableFooterView))njk_tableFooterView;
- (UITableView *(^)(BOOL remembersLastFocusedIndexPath))njk_remembersLastFocusedIndexPath;
- (UITableView *(^)(BOOL dragInteractionEnabled))njk_dragInteractionEnabled API_AVAILABLE(ios(11.0));

@end

NS_ASSUME_NONNULL_END
