//
//  UIButton+Gradient.m
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/3/19.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "UIButton+Gradient.h"
#import "GradientAlphaView.h"

@implementation UIButton (Gradient)

+ (instancetype)gradientButtonWithFram:(CGRect)fram{
    UIColor * leftColor = [UIColor colorWithRed:66 green:165 blue:246 alpha:1];         //#42a5f6
    UIColor * rightColor = [UIColor colorWithRed:47 green:87 blue:245 alpha:1];        //#2f57f5
    return [UIButton gradientButtonWithFram:fram leftColor:leftColor rightColor:rightColor];
}

+ (instancetype)gradientButtonWithFram:(CGRect)fram leftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor{
    UIImage * btnBgImg = [GradientAlphaView gradientImgFromColors:@[leftcolor,rightcolor] withFrame:CGRectMake(0, 0, fram.size.width, fram.size.height)];
    UIButton * bigButton = [UIButton buttonWithType:UIButtonTypeCustom];
    bigButton.frame = fram;
    bigButton.layer.masksToBounds = YES;
    bigButton.layer.cornerRadius = fram.size.height/2;
    bigButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [bigButton setBackgroundImage:btnBgImg forState:UIControlStateNormal];
    [bigButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    return bigButton;
}

- (void)updateLeftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor{
    UIImage * btnBgImg = [GradientAlphaView gradientImgFromColors:@[leftcolor,rightcolor] withFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
    [self setBackgroundImage:btnBgImg forState:UIControlStateNormal];
}

@end
