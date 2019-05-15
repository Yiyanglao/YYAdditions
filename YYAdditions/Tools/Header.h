//
//  Header.h
//  InternetPatient
//
//  Created by YY_ZYQ on 2017/12/6.
//  Copyright © 2017年 YY_ZYQ. All rights reserved.
//

#ifndef Header_h
#define Header_h

#define Kwidth   	 [UIScreen mainScreen].bounds.size.width
#define Kheight  	 [UIScreen mainScreen].bounds.size.height
#define phoneVersion [[[UIDevice currentDevice] systemVersion] floatValue]

//屏幕适配
#define SafeAreaTopHeight ((Kheight == 812.0 || Kheight == 896.0) ? 88.0 : 64.0)
#define SafeAreaBottomHeight ((Kheight == 812.0 || Kheight == 896.0) ? 34.0 : 0.0)
#define KScale Kwidth/375

#define IsEmptyString(...) (__VA_ARGS__ == nil || [__VA_ARGS__ isEmpty])

//UIFont
#define YYFont(...)      [UIFont systemFontOfSize:KScale* __VA_ARGS__]
#define YYFontMedi(...)  [UIFont systemFontOfSize:KScale* __VA_ARGS__ weight:UIFontWeightMedium]
#define YYFontBold(...)  [UIFont boldSystemFontOfSize:KScale* __VA_ARGS__]

#ifdef DEBUG
//开发模式
#define DebugMode YES
#define LogEnabel YES
#else
//生产模式
#define DebugMode NO
#define LogEnabel NO
#endif

//当前毫秒级时间字符串
#define MilliSecondStr     [UIHelper stringFromDate:[NSDate date] withFormate:@"HH:mm:ss.SSS"]
/// 根据DebugMode开发输出
#define DBLog(format, ...) if (LogEnabel) { printf("%s ",[MilliSecondStr UTF8String]);  printf("%s\n",[[NSString stringWithFormat:format, ## __VA_ARGS__] UTF8String]);}

#define Palette            [YYPalette shared]
#define DefineWeakSelf     __weak typeof(self) weakSelf = self;

/// 提示正在开发中
#define DEVELOPING [YYHelper showWarningText:@"此项功能正在开发中..." style:(showWariningMiddle)];
#define YOUAREBUSY [YYHelper showWarningText:@"正在通话中..." style:showWariningMiddle];


#endif /* Header_h */
