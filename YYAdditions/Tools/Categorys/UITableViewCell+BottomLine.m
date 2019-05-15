//
//  UITableViewCell+BottomLine.m
//  YYCredits
//
//  Created by eyoung on 2018/7/4.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "UITableViewCell+BottomLine.h"
#import <objc/runtime.h>

NSString const * cellBottomLineKey = @"cellBottomLineKey";

@implementation UITableViewCell (BottomLine)

- (CALayer *)cellBottomLine{
    return objc_getAssociatedObject(self, &cellBottomLineKey);
}

- (void)setCellBottomLine:(CALayer *)cellBottomLine{
    objc_setAssociatedObject(self, &cellBottomLineKey, cellBottomLine, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)showBottomLineWithColor:(UIColor *)linecolor andStyle:(BottomLineStyle)style{
    CGFloat leftGap = 0;
    CGFloat rightGap = 0;
    switch (style) {
        case BottomLineStyle_None:{
            [self.cellBottomLine removeFromSuperlayer];
        }
            return;
        case BottomLineStyle_Full:{
            leftGap = 0;
            rightGap = 0;
        }
            break;
        case BottomLineStyle_LeftGap:{
            leftGap = 12;
            rightGap = 0;
        }
            break;
        case BottomLineStyle_BothGap:{
            leftGap = 12;
            rightGap = 12;
        }
            break;
        default:
            break;
    }
    
    if (!linecolor) {
        linecolor = [UIColor colorWithRed:232 green:234 blue:237 alpha:1];  //#E8EAED
    }
    [self showBottomLineWithLeftGap:leftGap rightGap:rightGap thickness:1 color:linecolor];
}

- (void)showBottomLineWithLeftGap:(CGFloat)leftgap
                         rightGap:(CGFloat)rightGap
                        thickness:(CGFloat)thick
                            color:(UIColor *)color{
    CGFloat kwidth = [UIScreen mainScreen].bounds.size.width;
    if (!self.cellBottomLine) {
        self.cellBottomLine = [[CALayer alloc] init];
        self.cellBottomLine.frame = CGRectMake(leftgap, self.frame.size.height-thick, kwidth-leftgap-rightGap, thick);
        self.cellBottomLine.backgroundColor = color.CGColor;
        [self.layer addSublayer:self.cellBottomLine];
    }
    self.cellBottomLine.frame = CGRectMake(leftgap, self.frame.size.height-thick, kwidth-leftgap-rightGap, thick);
    self.cellBottomLine.backgroundColor = color.CGColor;
}

@end
