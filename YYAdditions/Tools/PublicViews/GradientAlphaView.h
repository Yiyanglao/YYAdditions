//
//  GradientAlphaView.h
//  YiyangDoc
//
//  Created by eyoung on 2017/11/3.
//  Copyright © 2017年 eyoung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GradientAlphaView : UIView

- (instancetype)initWithFrame:(CGRect)frame leftColor:(UIColor *)leftcolor rightColor:(UIColor *)rightcolor;
- (instancetype)initWithFrame:(CGRect)frame topColor:(UIColor *)topcolor bottomColor:(UIColor *)botcolor;

//左下右上渐变色图片
+ (UIImage *)gradientImgFromColors:(NSArray *)colors withFrame:(CGRect)frame;
//图片添加文字（字体白色，居中）
+ (UIImage *)addText:(NSString*)text toImage:(UIImage*)image;

@end
