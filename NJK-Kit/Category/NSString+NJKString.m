//
//  NSString+NJKString.m
//  NJK-Kit
//
//  Created by njk on 2020/8/18.
//  Copyright © 2020 NJK. All rights reserved.
//

#import "NSString+NJKString.h"

#import <CommonCrypto/CommonDigest.h>

@implementation NSString (NJKString)

// 是否为有效字符串
- (BOOL)yx_isValidString{
    if (nil == self
        || ![self isKindOfClass:[NSString class]]
        || [self yx_stringByTrimmingCharacters].length <= 0) {
        return NO;
    }
    return YES;
}

// 安全字符串
- (NSString *)yx_safeString{
    if ([self yx_isValidString]) {
        return self;
    }
    return @"";
}

// 去除字符串两端的空格及换行
- (NSString *)yx_stringByTrimmingCharacters{
    NSString *string = [self stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    string = [string stringByTrimmingCharactersInSet:[NSCharacterSet controlCharacterSet]];
    return string;
}

// 去掉两端空白，并合并中间多余空白
- (NSString *)yx_stringByTrimmingExtraSpaces{
    NSArray *array = [self componentsSeparatedByString:@" "];
    NSMutableArray *marray = [NSMutableArray new];
    for (NSString *stringOne in array) {
        //删除字符串中的所有空格
        NSString *zufuchuan = [[stringOne stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
        if (zufuchuan.length != 0) {
            [marray addObject:stringOne];
        }
    }

    NSString *mString = [marray componentsJoinedByString:@" "];
    //去除 字符串两端的空格 和回车
    mString = [mString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet ]];
    return mString;
}

//进行MD5加密
- (NSString *)stringFromMD5{
    
    if(self == nil || [self length] == 0)
        return nil;
    
    const char *value = [self UTF8String];
    
    unsigned char outputBuffer[CC_MD5_DIGEST_LENGTH];
    CC_MD5(value, (CC_LONG)strlen(value), outputBuffer);
    
    NSMutableString *outputString = [[NSMutableString alloc] initWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    for(NSInteger count = 0; count < CC_MD5_DIGEST_LENGTH; count++){
        [outputString appendFormat:@"%02x",outputBuffer[count]];
    }
    return outputString;
}

//eg:@"12.34"=>@"12.34" @"12.00"=>@"12"
- (NSString *)yx_formatInteger{
    if ([self floatValue] == ceilf([self floatValue]) && [self floatValue] == floorf([self floatValue])) {
        return [NSString stringWithFormat:@"%d",[self intValue]];
    }
    return self;
}

// 转分数 清除小数点后没用的0，最多保留两位小数
- (NSString *)yx_formatScoreString{
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    formatter.numberStyle = NSNumberFormatterDecimalStyle;
    formatter.maximumFractionDigits = 2;
    NSNumber *number = [NSNumber numberWithDouble:self.doubleValue];
    NSString *scoreString = [formatter stringFromNumber:number];
    return scoreString;
}

// url字符串编码
- (NSString *)yx_urlEncodeString{
    NSString *encodeStr = [self stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    return encodeStr;
}

// url字符串解码
- (NSString *)yx_urlDecodeString{
    NSString *decodeStr = [self stringByRemovingPercentEncoding];
    return decodeStr;
}

//判断手机号码是否合法
- (BOOL)checkPhoneNumInput{
    if (self.length != 11)
    {
        return NO;
    }else{
        //2020-07-15（之后新出的号码，不能判断）
        NSString * MOBILE = @"^1(3([0-35-9]\\d|4[1-8])|4[14-9]\\d|5([0125689]\\d|7[1-79])|66\\d|7[2-35-8]\\d|8\\d{2}|9[89]\\d)\\d{7}$";
        
        NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
        
        if ([regextestmobile evaluateWithObject:self] == YES)
        {
            return YES;
        }
        else
        {
            return NO;
        }
    }
}

//判断输入的邮箱是否合法
- (BOOL)validateEmail{
    if( (0 != [self rangeOfString:@"@"].length) &&  (0 != [self rangeOfString:@"."].length) ){
        NSMutableCharacterSet *invalidCharSet = [[[NSCharacterSet alphanumericCharacterSet] invertedSet]mutableCopy];
        [invalidCharSet removeCharactersInString:@"_-"];
        
        NSRange range1 = [self rangeOfString:@"@" options:NSCaseInsensitiveSearch];
        
        // If username part contains any character other than "."  "_" "-"
        
        NSString *usernamePart = [self substringToIndex:range1.location];
        NSArray *stringsArray1 = [usernamePart componentsSeparatedByString:@"."];
        for (NSString *string in stringsArray1) {
            NSRange rangeOfInavlidChars=[string rangeOfCharacterFromSet: invalidCharSet];
            if(rangeOfInavlidChars.length !=0 || [string isEqualToString:@""])
                return NO;
        }
        
        NSString *domainPart = [self substringFromIndex:range1.location+1];
        NSArray *stringsArray2 = [domainPart componentsSeparatedByString:@"."];
        
        for (NSString *string in stringsArray2) {
            NSRange rangeOfInavlidChars=[string rangeOfCharacterFromSet:invalidCharSet];
            if(rangeOfInavlidChars.length !=0 || [string isEqualToString:@""])
                return NO;
        }
        
        return YES;
    }
    else // no ''@'' or ''.'' present
        return NO;
}

//判断输入的网址是否合法
- (BOOL)validateUrl{
    NSString *reg =@"((http[s]{0,1}|ftp)://[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)|(www.[a-zA-Z0-9\\.\\-]+\\.([a-zA-Z]{2,4})(:\\d+)?(/[a-zA-Z0-9\\.\\-~!@#$%^&*+?:_/=<>]*)?)";
    NSPredicate *urlPredicate = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", reg];
    return [urlPredicate evaluateWithObject:self];
}

//手机号隐藏中间4位数字
- (NSString *)hideNumberPhone{
    if (self.length>=8) {
        NSString *string=[self stringByReplacingOccurrencesOfString:[self substringWithRange:NSMakeRange(3,5)]withString:@"*****"];
        return string;
    }
    return self;
}



@end
