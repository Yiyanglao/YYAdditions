//
//  NSString+IsEmpty.m
//  YiyangDoctorNew
//
//  Created by 王俊硕 on 2018/3/19.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <CommonCrypto/CommonDigest.h>
#import "NSString+IsEmpty.h"

@implementation NSString (IsEmpty)

#pragma mark ---------Class Methods----------
+ (BOOL)isNilOrNull:(NSString *)str{
    if (str == nil || str == NULL || [str isEqual:[NSNull null]] || [str isEqualToString:@"null"]) {
        return YES;
    }
    return NO;
}

+ (NSString *)md5:(NSString *)input {
    const char *cStr = [input UTF8String];
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5(cStr, (unsigned int)strlen(cStr), digest);
    
    NSMutableString *output = [NSMutableString stringWithCapacity:CC_MD5_DIGEST_LENGTH * 2];
    
    for(int i = 0; i < CC_MD5_DIGEST_LENGTH; i++)
        [output appendFormat:@"%02x", digest[i]];
    
    return  output;
}

#pragma mark ----------Object Methods----------
- (BOOL)invalid {
    if ([self isEqualToString:@""] || [self isEqualToString:@" "]) {
        return YES;
    } else {
        return NO;
    }
}

- (BOOL)valid {
    if (self.length > 0 && ![self isEqualToString:@" "]) {
        return YES;
    }
    return NO;
}

//汉字转大写拼音
- (NSString *)pinyinUppercase{
    NSMutableString *pinyin = [self mutableCopy];
    //先转换成拼音
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    //再去掉拼音中的注音
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripCombiningMarks, NO);
    //返回拼音大写字符串
    return [pinyin uppercaseString];
}

//参考 - 全国天气预报接口(聚合数据)
- (NSString *)weatherToIconNum{
    NSInteger weatherValue = [self integerValue];
    if (weatherValue <= 5 || weatherValue == 18) {
        return self;
    }
    //各种雨都是雨
    if (weatherValue >=6 && weatherValue <= 12) {
        return @"03";
    }
    //各种雪都是雪
    if (weatherValue >= 13 && weatherValue <= 17) {
        return @"13";
    }
    //冻雨也是雨
    if (weatherValue == 19) {
        return @"03";
    }
    //变化的雨也是雨
    if (weatherValue >= 21 && weatherValue <= 25) {
        return @"03";
    }
    //变化的雪也是雪
    if (weatherValue >= 26 && weatherValue <= 28) {
        return @"13";
    }
    //尘、霾没图标，算晴天
    return @"00";
}

- (NSAttributedString *)attributedStringwithAttributs:(NSArray <NSDictionary *>*)attributs andSegment:(NSArray *)segments{
    NSMutableAttributedString* attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    NSInteger location = 0;
    for (NSInteger idx = 0; idx < attributs.count; idx++) {
        if (segments.count <= idx) break;
        
        NSInteger length = [segments[idx] integerValue];
        if (location+length <= self.length) break;
        
        [attributedString addAttributes:attributs[idx] range:NSMakeRange(location, length)];
        location += length;
    }
    return attributedString;
}

@end
