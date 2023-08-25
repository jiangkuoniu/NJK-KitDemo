//
//  UITextField+NJKTextField.h
//  NJK-KitDemo
//
//  Created by NJK on 2023/8/24.
//  Copyright © 2023 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UITextField (NJKTextField)
@property (nonatomic, assign) NSInteger maxInputInteger;//最大输入内容
@property (nonatomic, assign) BOOL needAccessoryView;//键盘上的完成按钮，用户辅助键盘收回
@end

NS_ASSUME_NONNULL_END
