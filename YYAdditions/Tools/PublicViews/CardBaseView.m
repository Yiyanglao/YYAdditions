//
//  CardBaseView.m
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/6/14.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "CardBaseView.h"
#import "Header.h"
#import "UIColor+ZYQColor.h"

@implementation CardBaseView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        //阴影边框
        self.layer.shadowOpacity = 0.26;
        self.layer.shadowColor = [UIColor sy_colorWithString:@"#689BFF"].CGColor;
        self.layer.shadowOffset = CGSizeMake(1, 1);
        self.layer.cornerRadius = 5*KScale;
    }
    return self;
}

@end
