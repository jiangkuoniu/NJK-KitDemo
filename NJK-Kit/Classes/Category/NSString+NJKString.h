//
//  NSString+NJKString.h
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (NJKString)

//进行MD5加密
- (NSString *)stringFromMD5;

//判断手机号码是否合法
- (BOOL)checkPhoneNumInput;

//判断输入的邮箱是否合法
- (BOOL)validateEmail;

//判断输入的网址是否合法
- (BOOL)validateUrl;

//手机号隐藏中间4位数字
- (NSString *)hideNumberPhone;

@end

NS_ASSUME_NONNULL_END
