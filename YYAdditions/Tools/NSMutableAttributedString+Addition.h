//
//  NSMutableAttributedString+Addition.h
//  CategorysDemo
//
//  Created by eyoung on 2018/8/22.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (Addition)

- (void)appendString:(NSString *)str
            withFont:(UIFont *)font
           textColor:(UIColor *)color;
- (void)appendString:(NSString *)str withUnderlineColor:(UIColor *)lineColor;

@end
