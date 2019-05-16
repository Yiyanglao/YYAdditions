//
//  YYDeviceType.h
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/10/9.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#define IsIPX     [YYDeviceType screenEqualSize:CGSizeMake(1125, 2436)]
#define IsIPX_r   [YYDeviceType screenEqualSize:CGSizeMake(828, 1792)]
#define IsIPX_max [YYDeviceType screenEqualSize:CGSizeMake(1242, 2688)]

@interface YYDeviceType : NSObject

+ (BOOL)screenEqualSize:(CGSize)size;
+ (CGFloat)systemVersion;

@end
