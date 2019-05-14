//
//  YYHelper.h
//  YYAdditions
//
//  Created by eyoung on 2019/5/14.
//  Copyright © 2019 eyoung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <SVProgressHUD.h>


@interface YYHelper : NSObject

typedef NS_ENUM(NSInteger,ShowWarningStyle){
    showWariningBottom ,   //底部显示
    showWariningMiddle     //中间显示
    
};

/**
 显示HUD，可自定义显示样式
 */
+(void)showHUD;

/*
 显示进度条
 @param value 数值
 @param status 底部文字
 */
+ (void)showProgressValue: (float)value status: (NSString *)status;

/**
 隐藏HUD
 */
+(void)dismisHUD;
/// 主线程隐藏
+ (void)dismissHUDInMainQueue;

/**
 网络请求成功显示样式
 
 @param text 成功文字
 */
+(void)showSuccessWithText:(NSString *)text;


/**
 网络请求失败显示样式
 
 
 */
+(void)showErrorText;


/**
 提示view
 
 @param text 提示内容
 @param style 显示方式
 */
+(void)showWarningText:(NSString *)text style:(ShowWarningStyle)style;
+(void)showWarningText:(NSString *)text style:(ShowWarningStyle)style duration:(CGFloat)timelong;


/**
 获取本地存储的token
 
 @return 返回token
 */
+(NSString *)getToken;
+(void)updateToken:(NSString *)token;

/**
 存储用户的appid
 
 */
+(NSString *)getUserAPPID;
+(void)updateUserAppID:(NSString *)doctorId;

//存储用户的登录密码（密文密码，用于登录环信）
+(NSString *)getUserPasswd;
+(void)updateUserPasswd:(NSString *)pswd;

//存储用户选择的服务器
+(NSString *)getHostUrl;
+(void)updateHostUrl:(NSString *)hosturl;

/**
 返回用户手机号
 
 */
+(NSString *)getPhoneNumber;
+(void)updatePhoneNumber:(NSString *)telephone;

/**
 返回认证状态
 
 */
+(NSString *)getAuthenticateStatu;
+(void)updateAuthenticateStatu:(NSString *)statu;

/**
 返回账号头像链接
 
 */
+(NSString *)getHeadUrl;
+(void)updateHeadUrl:(NSString *)headurl;

/**
 返回账号名字
 
 */
+(NSString *)getMyName;
+(void)updateMyName:(NSString *)name;

/**
 返回账号所属医院
 
 */
+(NSString *)getHospital;
+(void)updateHospital:(NSString *)hospital;

//医生所属社区ID
+(NSString *)getCommunityId;
+(void)updateCommunityId:(NSString *)communityid;

/**
 判断用户是否登录
 
 */
+(BOOL)isLogin;
+(void)updateLogin:(BOOL)statu;

/**
 判断用户登陆过期
 
 */
+(BOOL)tokenInvalid;
+(void)updateTokenInvalid:(BOOL)valid;

/**
 判断当前工作状态
 
 */
+(BOOL)isWorking;
+(void)updateIsWorking:(BOOL)working;


// 主线程show
+(void)showWarningInMainText:(NSString *)text style:(ShowWarningStyle)style;
@end
