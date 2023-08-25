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

// 是否为有效字符串
- (BOOL)yx_isValidString;

// 安全字符串
- (NSString *)yx_safeString;

// 去除字符串两端的空格及换行
- (NSString *)yx_stringByTrimmingCharacters;

// 去掉两端空白，并合并中间多余空白
- (NSString *)yx_stringByTrimmingExtraSpaces;

//进行MD5加密
- (NSString *)stringFromMD5;

//eg:@"12.34"=>@"12.34" @"12.00"=>@"12"
- (NSString *)yx_formatInteger;

// 转分数 清除小数点后没用的0，最多保留两位小数
- (NSString *)yx_formatScoreString;

// url字符串编码
- (NSString *)yx_urlEncodeString;

// url字符串解码
- (NSString *)yx_urlDecodeString;

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
