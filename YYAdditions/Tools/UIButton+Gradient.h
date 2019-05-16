//
//  UIButton+Gradient.h
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/3/19.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Gradient)

+ (instancetype)gradientButtonWithFram:(CGRect)fram;
+ (instancetype)gradientButtonWithFram:(CGRect)fram leftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor;

- (void)updateLeftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor;

@end
