//
//  NSString+IsEmpty.h
//  YiyangDoctorNew
//
//  Created by 王俊硕 on 2018/3/19.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (IsEmpty)

//MD5加密字符串
+ (NSString *)md5:(NSString *)input;
//str为nil或null
+ (BOOL)isNilOrNull:(NSString *)str;

/*****
 作用：判断是否为“”、空格
 注意：此方法使用不安全，字符串为nil时，调用不到此方法
      强制返回nil ？？？
 *****/
- (BOOL) invalid;
//字符串长度大于0，且不为空格
- (BOOL) valid;
//汉字转大写拼音
- (NSString *)pinyinUppercase;
//参考 - 全国天气预报接口(聚合数据)
- (NSString *)weatherToIconNum;
//
- (NSAttributedString *)attributedStringwithAttributs:(NSArray <NSDictionary *>*)attributs andSegment:(NSArray *)segments;
@end
