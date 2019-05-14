//
//  UITableViewCell+BottomLine.m
//  YYCredits
//
//  Created by eyoung on 2018/7/4.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "UITableViewCell+BottomLine.h"
#import "UIColor+ZYQColor.h"
#import "UIView+Addition.h"
#import "Header.h"
#import "UIHelper.h"
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
            leftGap = 12*KScale;
            rightGap = 0*KScale;
        }
            break;
        case BottomLineStyle_BothGap:{
            leftGap = 12*KScale;
            rightGap = 12*KScale;
        }
            break;
        default:
            break;
    }
    
    if (!linecolor) {
        linecolor = [UIColor sy_colorWithString:@"#E8EAED"];
    }
    [self showBottomLineWithLeftGap:leftGap rightGap:rightGap thickness:1 color:linecolor];
}

- (void)showBottomLineWithLeftGap:(CGFloat)leftgap
                         rightGap:(CGFloat)rightGap
                        thickness:(CGFloat)thick
                            color:(UIColor *)color{
    if (!self.cellBottomLine) {
        self.cellBottomLine = [UIHelper getSeperatorWithFrame:CGRectMake(leftgap, self.height-thick, Kwidth-leftgap-rightGap, thick) color:color];
        [self.layer addSublayer:self.cellBottomLine];
    }
    self.cellBottomLine.frame = CGRectMake(leftgap, self.height-thick, Kwidth-leftgap-rightGap, thick);
    self.cellBottomLine.backgroundColor = color.CGColor;
}

@end
