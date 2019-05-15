//
//  UILabel+Suit.m
//  YiyangDoc
//
//  Created by eyoung on 2017/11/7.
//  Copyright © 2017年 eyoung. All rights reserved.
//

#import "UILabel+Suit.h"

@implementation UILabel (Suit)

+ (CGFloat)getHeightByWidth:(CGFloat)width title:(NSString *)title font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, width, 0)];
    label.text = title;
    label.font = font;
    label.numberOfLines = 0;
    [label sizeToFit];
    CGFloat height = label.frame.size.height;
    return height;
}

+ (CGFloat)getWidthWithTitle:(NSString *)title font:(UIFont *)font {
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 1000, 0)];
    label.text = title;
    label.font = font;
    [label sizeToFit];
    return label.frame.size.width;
}

- (CGFloat)getCurrentTextWidth{
    return [UILabel getWidthWithTitle:self.text font:self.font];
}

- (CGFloat)getCurrentTextHeight{
    return [UILabel getHeightByWidth:self.frame.size.width title:self.text font:self.font];
}

@end
