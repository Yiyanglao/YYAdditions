//
//  CardBaseView.m
//  YiyangDoctorNew
//
//  Created by eyoung on 2018/6/14.
//  Copyright © 2018年 eyoung. All rights reserved.
//

#import "CardBaseView.h"

@implementation CardBaseView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = UIColor.whiteColor;
        //阴影边框
        self.layer.shadowOpacity = 0.26;
        self.layer.shadowColor = [UIColor colorWithRed:104/255.0 green:155/255.0 blue:255/255.0 alpha:1].CGColor;  //#689BFF
        self.layer.shadowOffset = CGSizeMake(1, 1);
        self.layer.cornerRadius = 5;
    }
    return self;
}

@end
