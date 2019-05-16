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
    [UIHelper getNowTimestamp];
    UIButton * testBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    testBtn.frame = CGRectMake(20, 84, Kwidth-40, 40);
    [testBtn setTitle:@"测试按钮" forState:UIControlStateNormal];
    [testBtn addTarget:self action:@selector(testButtonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:testBtn];
}

- (void)testButtonAction:(UIButton *)sender{
    UIImage * image = [UIHelper fetchImageWithClass:[YYHelper class] bundleName:@"YYAddImgs" imageName:@"logo1024" imageType:@"png"];
    UIImageView * imgView = [self.view subviewWithTag:101];
    if (!imgView) {
        imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
        imgView.center = CGPointMake(Kwidth/2, Kheight/2);
    }
    imgView.image = image;
    [self.view addSubview:imgView];
}


@end
