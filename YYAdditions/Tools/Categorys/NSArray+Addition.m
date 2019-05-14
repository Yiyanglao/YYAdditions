//
//  NSArray+Addition.m
//  InternetPatientNew
//
//  Created by eyoung on 2018/1/9.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "NSArray+Addition.h"

@implementation NSArray (Addition)

- (BOOL)contentString:(NSString *)str{
    for (id obj in self) {
        if ([obj isKindOfClass:[NSString class]] && [obj isEqualToString:str]) {
            return YES;
        }
    }
    return NO;
}

@end
