//
//  ViewController.m
//  YYAdditions
//
//  Created by eyoung on 2019/5/14.
//  Copyright © 2019 eyoung. All rights reserved.
//

#import "ViewController.h"
#import "YYAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = UIColor.orangeColor;
    //[YYHelper showSuccessWithText:@"skduhvow"];
    [UIHelper getNowTimestamp];
    UIButton * testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(20, 84, Kwidth-40, 40);
    [testBtn setTitle:@"测试按钮" forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
    //显示图片
//    NSBundle *bundle = [NSBundle bundleForClass:[YYHelper class]];
//    NSURL *url = [bundle URLForResource:@"YYAddImgs" withExtension:@"bundle"];
//    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
//    UIImage * infoImage = [UIImage imageWithContentsOfFile:[imageBundle pathForResource:@"home_icon1" ofType:@"png"]];
//    UIImageView * ineView = [[UIImageView alloc] initWithImage:infoImage];
//    ineView.center = CGPointMake(Kwidth/2, Kheight/2);
//    [self.view addSubview:ineView];
}

- (void)testButtonAction:(UIButton *)sender{
    [UIHelper loadTestImg];
}


@end
