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
    
    [YYHelper getToken];
}


@end
