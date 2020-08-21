//
//  UITableViewCell+NJKChain.h
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITableViewCell (NJKChain)

- (UITableViewCell *(^)(UIView *backgroundView))njk_backgroundView;
- (UITableViewCell *(^)(UIView *multipleSelectionBackgroundView))njk_multipleSelectionBackgroundView;
- (UITableViewCell *(^)(UITableViewCellSelectionStyle selectionStyle))njk_selectionStyle;
- (UITableViewCell *(^)(BOOL selected))njk_selected;
- (UITableViewCell *(^)(BOOL highlighted))njk_highlighted;
- (UITableViewCell *(^)(BOOL showsReorderControl))njk_showsReorderControl;
- (UITableViewCell *(^)(BOOL shouldIndentWhileEditing))njk_shouldIndentWhileEditing;
- (UITableViewCell *(^)(UITableViewCellAccessoryType accessoryType))njk_accessoryType;
- (UITableViewCell *(^)(UIView *accessoryView))njk_accessoryView;
- (UITableViewCell *(^)(UITableViewCellAccessoryType editingAccessoryType))njk_editingAccessoryType;
- (UITableViewCell *(^)(UIView *editingAccessoryView))njk_editingAccessoryView;
- (UITableViewCell *(^)(NSInteger indentationLevel))njk_indentationLevel;
- (UITableViewCell *(^)(CGFloat indentationWidth))njk_indentationWidth;
- (UITableViewCell *(^)(UIEdgeInsets separatorInset))njk_separatorInset;
- (UITableViewCell *(^)(BOOL editing))njk_editing;
- (UITableViewCell *(^)(UITableViewCellFocusStyle focusStyle))njk_focusStyle;
- (UITableViewCell *(^)(BOOL userInteractionEnabledWhileDragging))njk_userInteractionEnabledWhileDragging API_AVAILABLE(ios(11.0));

@end

NS_ASSUME_NONNULL_END
