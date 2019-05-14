//
//  CALayer+Seperator.h
//  YiyangDoctorNew
//
//  Created by 王俊硕 on 2018/3/20.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import "UIHelper.h"

@interface CALayer (Seperator)
+ (CALayer *)seperatorWithFrame: (CGRect)frame;
/// (0,0,kWidth,fl 1)的灰色分割线
+ (CALayer *)topSeperator: (CALayerSeperatorStyle)style;
+ (CALayer *) verticalSeperatorOriginAt: (CGPoint)origin length: (CGFloat *)length;
@end
