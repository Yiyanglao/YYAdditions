//
//  CALayer+Seperator.m
//  YiyangDoctorNew
//
//  Created by 王俊硕 on 2018/3/20.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "CALayer+Seperator.h"
#import "YYAdditions.h"

@implementation CALayer (Seperator)
+ (CALayer *)topSeperator: (CALayerSeperatorStyle)style {
    CGRect rect = CGRectZero;
    switch (style) {
        case 0:
            rect = CGRectMake(0, 0, Kwidth, 1);
            break;
        case 1:
            rect = CGRectMake(fl 12, 0, Kwidth-fl 12, 1);
            break;
        case 2:
            rect = CGRectMake(0, 0, Kwidth-fl 24, 1);
            break;
        case 3:
            rect = CGRectMake(fl 12, 0, Kwidth-fl 24, 1);
            break;
        default:
            break;
    }
    CALayer* seperator = [[CALayer alloc] init];
    seperator.frame = rect;
    seperator.backgroundColor = [Palette.wECF0F4 CGColor];
    return seperator;
}
+ (CALayer *)seperatorWithFrame: (CGRect)frame  {
    
    CALayer* seperator = [[CALayer alloc] init];
    seperator.frame = frame;
    seperator.backgroundColor = [Palette.wECF0F4 CGColor];
    return seperator;
}
+ (CALayer *) verticalSeperatorOriginAt: (CGPoint)origin length: (CGFloat *)length {
    CALayer *seperator = [[CALayer alloc] init];
    seperator.frame = CGRectMake(origin.x, origin.y, 1, *length);
    seperator.backgroundColor = [Palette.wECF0F4 CGColor];
    return seperator;
}
@end

