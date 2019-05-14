//
//  UILabel+Suit.h
//  YiyangDoc
//
//  Created by eyoung on 2017/11/7.
//  Copyright © 2017年 eyoung. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (Suit)

+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont*)font;
+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font;

//文本的宽度和高度，注意与Label的fram宽度和高度进行区分。
- (CGFloat)getCurrentTextWidth;
- (CGFloat)getCurrentTextHeight;

@end
