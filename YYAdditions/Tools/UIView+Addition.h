//
//  UIView+Addition.h
//  Vaccine
//
//  Created by Tonny on 7/30/13.
//  Copyright (c) 2013 DoouYa All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Addition)

@property (nonatomic) CGFloat left;

@property (nonatomic) CGFloat top;

@property (nonatomic) CGFloat right;

@property (nonatomic) CGFloat bottom;

@property (nonatomic) CGFloat width;

@property (nonatomic) CGFloat height;

@property (nonatomic) CGPoint origin;

@property (nonatomic) CGSize size;

@property (nonatomic) CGFloat centerX;
@property (nonatomic) CGFloat centerY;

- (id)subviewWithTag:(NSInteger)tag;

- (UIViewController*)viewController;

- (UIImage *)blurredSnapshot;

- (id)superviewWithClass:(Class)viewClass;

- (NSIndexPath *)indexPathInTableView:(UITableView *)tableView;

- (void)glowWithColor:(UIColor *)glowColor;

- (void)setLayerRadius:(CGFloat)radius forCorners:(UIRectCorner)corners;

+ (UIView *)lineViewWithLength:(CGFloat)length;

@end
