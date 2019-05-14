//
//  NSDate+FormatStr.h
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/3/23.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FormatStr)

//@"yyyy-MM-dd HH:mm:ss zzz"
- (NSString *)dateStringWithFormate:(NSString *)formatStr;

@end
