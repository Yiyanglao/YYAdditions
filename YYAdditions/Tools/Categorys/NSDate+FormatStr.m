//
//  NSDate+FormatStr.m
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/3/23.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "NSDate+FormatStr.h"

@implementation NSDate (FormatStr)

//@"yyyy-MM-dd HH:mm:ss zzz"
- (NSString *)dateStringWithFormate:(NSString *)formatStr{
    //用于格式化NSDate对象
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    //设置格式：zzz表示时区
    [dateFormatter setDateFormat:formatStr];
    //NSDate转NSString
    return [dateFormatter stringFromDate:self];
}

@end
