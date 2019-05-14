//
//  UITableViewCell+BottomLine.h
//  YYCredits
//
//  Created by eyoung on 2018/7/4.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    BottomLineStyle_None,
    BottomLineStyle_Full,
    BottomLineStyle_LeftGap,
    BottomLineStyle_BothGap,
} BottomLineStyle;

@interface UITableViewCell (BottomLine)

@property (nonatomic) CALayer * cellBottomLine;

- (void)showBottomLineWithColor:(UIColor *)linecolor andStyle:(BottomLineStyle)style;
- (void)showBottomLineWithLeftGap:(CGFloat)leftgap
                         rightGap:(CGFloat)rightGap
                        thickness:(CGFloat)thick
                            color:(UIColor *)color;

@end
