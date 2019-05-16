//
//  YYHelper.m
//  YYAdditions
//
//  Created by eyoung on 2019/5/14.
//  Copyright © 2019 eyoung. All rights reserved.
//

#import "YYHelper.h"
#import <UIKit/UIKit.h>

#define Kwidth        [UIScreen mainScreen].bounds.size.width
#define Kheight       [UIScreen mainScreen].bounds.size.height

@implementation YYHelper

+(void)showHUD{
    [SVProgressHUD show];
    //设置背景颜色
    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeClear];
    
    //下边两个方法绑定使用
    // HUD的背景颜色和app的背景颜色一致
    //    [SVProgressHUD setBackgroundLayerColor:[[UIColor sy_backgroundColor] colorWithAlphaComponent:0.4]];
    //    [SVProgressHUD setDefaultMaskType:SVProgressHUDMaskTypeCustom];
    //
    //    [SVProgressHUD setDefaultStyle:SVProgressHUDStyleCustom];
    //    [SVProgressHUD setBackgroundColor:[UIColor clearColor]];
    //    [SVProgressHUD setForegroundColor:[UIColor whiteColor]];
    //
    
}

+(void)showSuccessWithText:(NSString *)text{
    //设置显示时间
    [SVProgressHUD setMinimumDismissTimeInterval:1.2];
    [SVProgressHUD showSuccessWithStatus:text];
}

+(void)showErrorText{
    //    //设置显示时间
    //    [SVProgressHUD setMinimumDismissTimeInterval:1.5];
    //    [SVProgressHUD showErrorWithStatus:text];
    
    //移除显示的HUD
    [SVProgressHUD dismiss];
    [self showWarningText:@"解析数据错误,请检查网络" style:showWariningMiddle];
}

+(void)dismisHUD{
    [SVProgressHUD dismiss];
}

+ (void)dismissHUDInMainQueue {
    dispatch_async(dispatch_get_main_queue(), ^{
        [SVProgressHUD dismiss];
    });
}

+(void)showWarningText:(NSString *)text style:(ShowWarningStyle)style{
    [YYHelper showWarningText:text style:style duration:2];
}

+(void)showWarningText:(NSString *)text style:(ShowWarningStyle)style duration:(CGFloat)timelong{
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    UIView *showView = [[UIView alloc] initWithFrame:CGRectMake(1, 1,1, 1)];
    showView.backgroundColor = [UIColor blackColor];
    showView.layer.cornerRadius = 2;
    showView.layer.masksToBounds = YES;
    showView.alpha = 0.6;
    [window addSubview:showView];
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:12]};
    CGRect rect = [text boundingRectWithSize:CGSizeMake(Kwidth, 1000) options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin attributes:attribute context:nil];
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 5, rect.size.width, rect.size.height)];
    label.text = text;
    label.numberOfLines = 0;
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:12];
    label.textAlignment = NSTextAlignmentCenter;
    
    switch (style) {
        case showWariningBottom:{
            showView.frame = CGRectMake((Kwidth -CGRectGetWidth(label.frame) - 20) / 2 , Kheight - 50, CGRectGetWidth(label.frame) + 20, CGRectGetHeight(label.frame)+ 10);
            break;
        }
        case showWariningMiddle:{
            showView.frame = CGRectMake((Kwidth -CGRectGetWidth(label.frame) - 20) / 2 , Kheight/2, CGRectGetWidth(label.frame) + 20, CGRectGetHeight(label.frame)+ 10);
            break;
        }
            
        default:
            break;
    }
    [showView addSubview:label];
    
    if (timelong <= 0.5) {
        timelong = 2;
    }
    [UIView animateWithDuration:0.4 delay:timelong-0.4 options:UIViewAnimationOptionTransitionNone animations:^{
        showView.alpha = 0;
    } completion:^(BOOL finished) {
        [showView removeFromSuperview];
    }];
}

+(void)updateToken:(NSString *)token{
    if (!token) return;
    [[NSUserDefaults standardUserDefaults] setObject:token forKey:@"YY_Apptoken"];
}
+(NSString *)getToken{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *token = [defaults objectForKey:@"YY_Apptoken"];
    return token;
}

+(void)updateUserAppID:(NSString *)doctorId{
    if (!doctorId) return;
    [[NSUserDefaults standardUserDefaults] setObject:doctorId forKey:@"YY_DoctorId"];
}
+(NSString *)getUserAPPID{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *APPID = [defaults objectForKey:@"YY_DoctorId"];
    return APPID;
}

+(NSString *)getUserPasswd{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"YY_DoctorPSW"];
}
+(void)updateUserPasswd:(NSString *)pswd{
    if (!pswd) return;
    [[NSUserDefaults standardUserDefaults] setObject:pswd forKey:@"YY_DoctorPSW"];
}

+(void)updateHostUrl:(NSString *)hosturl{
    if (!hosturl) return;
    [[NSUserDefaults standardUserDefaults] setObject:hosturl forKey:@"YY_HostUrl"];
}
+(NSString *)getHostUrl{
    return [[NSUserDefaults standardUserDefaults] objectForKey:@"YY_HostUrl"];
}

+(void)updatePhoneNumber:(NSString *)telephone{
    if (!telephone) return;
    [[NSUserDefaults standardUserDefaults] setObject:telephone forKey:@"YY_PhoneNumb"];
}
+ (NSString *)getPhoneNumber{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *number = [defaults objectForKey:@"YY_PhoneNumb"];
    return number;
}

+(void)updateAuthenticateStatu:(NSString *)statu{
    if (!statu) return;
    [[NSUserDefaults standardUserDefaults] setObject:statu forKey:@"YY_Authenticate"];
}
+(NSString *)getAuthenticateStatu{
    NSString * statu = [[NSUserDefaults standardUserDefaults] objectForKey:@"YY_Authenticate"];
    return statu;
}

+(void)updateHeadUrl:(NSString *)headurl{
    if (!headurl) return;
    [[NSUserDefaults standardUserDefaults] setObject:headurl forKey:@"YY_HeadUrl"];
}
+(NSString *)getHeadUrl{
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"YY_HeadUrl"];
}

+(void)updateMyName:(NSString *)name{
    if (!name) return;
    [[NSUserDefaults standardUserDefaults] setObject:name forKey:@"YY_DoctorName"];
}
+(NSString *)getMyName{
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"YY_DoctorName"];
}

+(void)updateHospital:(NSString *)hospital{
    if (!hospital) return;
    [[NSUserDefaults standardUserDefaults] setObject:hospital forKey:@"YY_Hospital"];
}
+(NSString *)getHospital{
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"YY_Hospital"];
}

+(void)updateCommunityId:(NSString *)communityid{
    if (!communityid) return;
    [[NSUserDefaults standardUserDefaults] setObject:communityid forKey:@"YY_CommunityId"];
}
+(NSString *)getCommunityId{
    return [[NSUserDefaults standardUserDefaults] valueForKey:@"YY_CommunityId"];
}

+(void)updateLogin:(BOOL)statu{
    [[NSUserDefaults standardUserDefaults] setBool:statu forKey:@"YY_IsLogin"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(BOOL)isLogin{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    //用boolforkey取值
    return [defaults boolForKey:@"YY_IsLogin"];
}

+(void)updateTokenInvalid:(BOOL)valid{
    [[NSUserDefaults standardUserDefaults] setBool:valid forKey:@"YY_TokenInvalid"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+(BOOL)tokenInvalid{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults boolForKey:@"YY_TokenInvalid"];
}

+(void)updateIsWorking:(BOOL)working{
    [[NSUserDefaults standardUserDefaults] setBool:working forKey:@"YY_IsWorking"];
}
+(BOOL)isWorking{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    BOOL working = [defaults boolForKey:@"YY_IsWorking"];
    return working;
}

+ (void)showProgressValue: (float)value status: (NSString *)status {
    [SVProgressHUD showProgress:value status:status];
}


//
+(void)showWarningInMainText:(NSString *)text style:(ShowWarningStyle)style{
    dispatch_async(dispatch_get_main_queue(), ^{
        [YYHelper showWarningText: text style: style];
    });
    
}

@end
