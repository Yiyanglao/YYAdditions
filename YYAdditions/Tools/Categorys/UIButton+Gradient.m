//
//  UIButton+Gradient.m
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/3/19.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "UIButton+Gradient.h"
#import "UIColor+ZYQColor.h"
#import "UIView+Addition.h"
#import "GradientAlphaView.h"
#import "Header.h"

@implementation UIButton (Gradient)

+ (instancetype)gradientButtonWithFram:(CGRect)fram{
    UIColor * leftColor = [UIColor sy_colorWithString:@"#42a5f6"];
    UIColor * rightColor = [UIColor sy_colorWithString:@"#2f57f5"];
    return [UIButton gradientButtonWithFram:fram leftColor:leftColor rightColor:rightColor];
}

+ (instancetype)gradientButtonWithFram:(CGRect)fram leftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor{
    UIImage * btnBgImg = [GradientAlphaView gradientImgFromColors:@[leftcolor,rightcolor] withFrame:CGRectMake(0, 0, fram.size.width, fram.size.height)];
    UIButton * bigButton = [UIButton buttonWithType:UIButtonTypeCustom];
    bigButton.frame = fram;
    bigButton.layer.masksToBounds = YES;
    bigButton.layer.cornerRadius = fram.size.height/2;
    bigButton.titleLabel.font = [UIFont systemFontOfSize:14*KScale];
    [bigButton setBackgroundImage:btnBgImg forState:UIControlStateNormal];
    [bigButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    return bigButton;
}

- (void)updateLeftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor{
    UIImage * btnBgImg = [GradientAlphaView gradientImgFromColors:@[leftcolor,rightcolor] withFrame:CGRectMake(0, 0, self.width, self.height)];
    [self setBackgroundImage:btnBgImg forState:UIControlStateNormal];
}

@end
