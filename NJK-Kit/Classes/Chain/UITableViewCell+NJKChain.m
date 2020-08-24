//
//  UITableViewCell+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UITableViewCell+NJKChain.h"

@implementation UITableViewCell (NJKChain)

- (UITableViewCell *(^)(UIView *backgroundView))njk_backgroundView{
    return ^(UIView *backgroundView){
        self.backgroundView = backgroundView;
        return self;
    };
}
- (UITableViewCell *(^)(UIView *multipleSelectionBackgroundView))njk_multipleSelectionBackgroundView{
    return ^(UIView *multipleSelectionBackgroundView){
        self.multipleSelectionBackgroundView = multipleSelectionBackgroundView;
        return self;
    };
}
- (UITableViewCell *(^)(UITableViewCellSelectionStyle selectionStyle))njk_selectionStyle{
    return ^(UITableViewCellSelectionStyle selectionStyle){
        self.selectionStyle = selectionStyle;
        return self;
    };
}
- (UITableViewCell *(^)(BOOL selected))njk_selected{
    return ^(BOOL selected){
        self.selected = selected;
        return self;
    };
}
- (UITableViewCell *(^)(BOOL highlighted))njk_highlighted{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}
- (UITableViewCell *(^)(BOOL showsReorderControl))njk_showsReorderControl{
    return ^(BOOL showsReorderControl){
        self.showsReorderControl = showsReorderControl;
        return self;
    };
}
- (UITableViewCell *(^)(BOOL shouldIndentWhileEditing))njk_shouldIndentWhileEditing{
    return ^(BOOL shouldIndentWhileEditing){
        self.shouldIndentWhileEditing = shouldIndentWhileEditing;
        return self;
    };
}
- (UITableViewCell *(^)(UITableViewCellAccessoryType accessoryType))njk_accessoryType{
    return ^(UITableViewCellAccessoryType accessoryType){
        self.accessoryType = accessoryType;
        return self;
    };
}
- (UITableViewCell *(^)(UIView *accessoryView))njk_accessoryView{
    return ^(UIView *accessoryView){
        self.accessoryView = accessoryView;
        return self;
    };
}
- (UITableViewCell *(^)(UITableViewCellAccessoryType editingAccessoryType))njk_editingAccessoryType{
    return ^(UITableViewCellAccessoryType editingAccessoryType){
        self.editingAccessoryType = editingAccessoryType;
        return self;
    };
}
- (UITableViewCell *(^)(UIView *editingAccessoryView))njk_editingAccessoryView{
    return ^(UIView *editingAccessoryView){
        self.editingAccessoryView = editingAccessoryView;
        return self;
    };
}
- (UITableViewCell *(^)(NSInteger indentationLevel))njk_indentationLevel{
    return ^(NSInteger indentationLevel){
        self.indentationLevel = indentationLevel;
        return self;
    };
}
- (UITableViewCell *(^)(CGFloat indentationWidth))njk_indentationWidth{
    return ^(CGFloat indentationWidth){
        self.indentationWidth = indentationWidth;
        return self;
    };
}
- (UITableViewCell *(^)(UIEdgeInsets separatorInset))njk_separatorInset{
    return ^(UIEdgeInsets separatorInset){
        self.separatorInset = separatorInset;
        return self;
    };
}
- (UITableViewCell *(^)(BOOL editing))njk_editing{
    return ^(BOOL editing){
        self.editing = editing;
        return self;
    };
}
- (UITableViewCell *(^)(UITableViewCellFocusStyle focusStyle))njk_focusStyle{
    return ^(UITableViewCellFocusStyle focusStyle){
        self.focusStyle = focusStyle;
        return self;
    };
}
- (UITableViewCell *(^)(BOOL userInteractionEnabledWhileDragging))njk_userInteractionEnabledWhileDragging API_AVAILABLE(ios(11.0)){
    return ^(BOOL userInteractionEnabledWhileDragging){
        self.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging;
        return self;
    };
}

@end
