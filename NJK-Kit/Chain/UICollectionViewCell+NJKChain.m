//
//  UICollectionViewCell+NJKChain.m
//  NJK-Kit
//
//  Created by njk on 2020/8/19.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "UICollectionViewCell+NJKChain.h"

@implementation UICollectionViewCell (NJKChain)

- (UICollectionViewCell *(^)(BOOL selected))njk_selected{
    return ^(BOOL selected){
        self.selected = selected;
        return self;
    };
}
- (UICollectionViewCell *(^)(BOOL highlighted))njk_highlighted{
    return ^(BOOL highlighted){
        self.highlighted = highlighted;
        return self;
    };
}
- (UICollectionViewCell *(^)(UIView *backgroundView))njk_backgroundView{
    return ^(UIView *backgroundView){
        self.backgroundView = backgroundView;
        return self;
    };
}
- (UICollectionViewCell *(^)(UIView *selectedBackgroundView))njk_selectedBackgroundView{
    return ^(UIView *selectedBackgroundView){
        self.selectedBackgroundView = selectedBackgroundView;
        return self;
    };
}

@end
