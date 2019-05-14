//
//  YYDeviceType.m
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/10/9.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "YYDeviceType.h"

@implementation YYDeviceType

+ (BOOL)screenEqualSize:(CGSize)size{
    return [UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(size, [[UIScreen mainScreen] currentMode].size) : NO;
}

+ (CGFloat)systemVersion{
    return [[UIDevice currentDevice] systemVersion].floatValue;
}

@end
