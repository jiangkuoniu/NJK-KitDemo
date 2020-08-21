//
//  UITableView+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UITableView+NJKChain.h"

@implementation UITableView (NJKChain)

- (UITableView *(^)(id <UITableViewDataSource> dataSource))njk_dataSource{
    return ^(id <UITableViewDataSource> dataSource){
        self.dataSource = dataSource;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDelegate> delegate))njk_delegate{
    return ^(id <UITableViewDelegate> delegate){
        self.delegate = delegate;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDataSourcePrefetching> prefetchDataSource))njk_prefetchDataSource API_AVAILABLE(ios(10.0)){
    return ^(id <UITableViewDataSourcePrefetching> prefetchDataSource){
        self.prefetchDataSource = prefetchDataSource;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDragDelegate> dragDelegate))njk_dragDelegate API_AVAILABLE(ios(11.0)){
    return ^(id <UITableViewDragDelegate> dragDelegate){
        self.dragDelegate = dragDelegate;
        return self;
    };
}
- (UITableView *(^)(id <UITableViewDropDelegate> dropDelegate))njk_dropDelegate API_AVAILABLE(ios(11.0)){
    return ^(id <UITableViewDropDelegate> dropDelegate){
        self.dropDelegate = dropDelegate;
        return self;
    };
}
- (UITableView *(^)(CGFloat rowHeight))njk_rowHeight{
    return ^(CGFloat rowHeight){
        self.rowHeight = rowHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat sectionHeaderHeight))njk_sectionHeaderHeight{
    return ^(CGFloat sectionHeaderHeight){
        self.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat sectionFooterHeight))njk_sectionFooterHeight{
    return ^(CGFloat sectionFooterHeight){
        self.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat estimatedRowHeight))njk_estimatedRowHeight{
    return ^(CGFloat estimatedRowHeight){
        self.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat estimatedSectionHeaderHeight))njk_estimatedSectionHeaderHeight{
    return ^(CGFloat estimatedSectionHeaderHeight){
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}
- (UITableView *(^)(CGFloat estimatedSectionFooterHeight))njk_estimatedSectionFooterHeight{
    return ^(CGFloat estimatedSectionFooterHeight){
        self.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}
- (UITableView *(^)(UIEdgeInsets separatorInset))njk_separatorInset{
    return ^(UIEdgeInsets separatorInset){
        self.separatorInset = separatorInset;
        return self;
    };
}
- (UITableView *(^)(UITableViewSeparatorInsetReference separatorInsetReference))njk_separatorInsetReference API_AVAILABLE(ios(11.0)){
    return ^(UITableViewSeparatorInsetReference separatorInsetReference){
        self.separatorInsetReference = separatorInsetReference;
        return self;
    };
}
- (UITableView *(^)(UIView *backgroundView))njk_backgroundView{
    return ^(UIView *backgroundView){
        self.backgroundView = backgroundView;
        return self;
    };
}
- (UITableView *(^)(BOOL editing))njk_editing{
    return ^(BOOL editing){
        self.editing = editing;
        return self;
    };
}
- (UITableView *(^)(BOOL allowsSelection))njk_allowsSelection{
    return ^(BOOL allowsSelection){
        self.allowsSelection = allowsSelection;
        return self;
    };
}
- (UITableView *(^)(BOOL allowsSelectionDuringEditing))njk_allowsSelectionDuringEditing{
    return ^(BOOL allowsSelectionDuringEditing){
        self.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}
- (UITableView *(^)(BOOL allowsMultipleSelection))njk_allowsMultipleSelection{
    return ^(BOOL allowsMultipleSelection){
        self.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}
- (UITableView *(^)(BOOL allowsMultipleSelectionDuringEditing))njk_allowsMultipleSelectionDuringEditing{
    return ^(BOOL allowsMultipleSelectionDuringEditing){
        self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing;
        return self;
    };
}
- (UITableView *(^)(NSInteger sectionIndexMinimumDisplayRowCount))njk_sectionIndexMinimumDisplayRowCount{
    return ^(NSInteger sectionIndexMinimumDisplayRowCount){
        self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}
- (UITableView *(^)(UIColor *sectionIndexColor))njk_sectionIndexColor{
    return ^(UIColor *sectionIndexColor){
        self.sectionIndexColor = sectionIndexColor;
        return self;
    };
}
- (UITableView *(^)(UIColor *sectionIndexBackgroundColor))njk_sectionIndexBackgroundColor{
    return ^(UIColor *sectionIndexBackgroundColor){
        self.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}
- (UITableView *(^)(UIColor *sectionIndexTrackingBackgroundColor))njk_sectionIndexTrackingBackgroundColor{
    return ^(UIColor *sectionIndexTrackingBackgroundColor){
        self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}
- (UITableView *(^)(UITableViewCellSeparatorStyle separatorStyle))njk_separatorStyle{
    return ^(UITableViewCellSeparatorStyle separatorStyle){
        self.separatorStyle = separatorStyle;
        return self;
    };
}
- (UITableView *(^)(UIColor *separatorColor))njk_separatorColor{
    return ^(UIColor *separatorColor){
        self.separatorColor = separatorColor;
        return self;
    };
}
- (UITableView *(^)(UIVisualEffect *separatorEffect))njk_separatorEffect{
    return ^(UIVisualEffect *separatorEffect){
        self.separatorEffect = separatorEffect;
        return self;
    };
}
- (UITableView *(^)(BOOL cellLayoutMarginsFollowReadableWidth))njk_cellLayoutMarginsFollowReadableWidth{
    return ^(BOOL cellLayoutMarginsFollowReadableWidth){
        self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}
- (UITableView *(^)(BOOL insetsContentViewsToSafeArea))njk_insetsContentViewsToSafeArea API_AVAILABLE(ios(11.0)){
    return ^(BOOL insetsContentViewsToSafeArea){
        self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea;
        return self;
    };
}
- (UITableView *(^)(UIView *tableHeaderView))njk_tableHeaderView{
    return ^(UIView *tableHeaderView){
        self.tableHeaderView = tableHeaderView;
        return self;
    };
}
- (UITableView *(^)(UIView *tableFooterView))njk_tableFooterView{
    return ^(UIView *tableFooterView){
        self.tableFooterView = tableFooterView;
        return self;
    };
}
- (UITableView *(^)(BOOL remembersLastFocusedIndexPath))njk_remembersLastFocusedIndexPath{
    return ^(BOOL remembersLastFocusedIndexPath){
        self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}
- (UITableView *(^)(BOOL dragInteractionEnabled))njk_dragInteractionEnabled API_AVAILABLE(ios(11.0)){
    return ^(BOOL dragInteractionEnabled){
        self.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}

@end
