//
//  SUSupportService.m
//  SUItems
//
//  Created by June on 17/3/9.
//  Copyright © 2017年 http://h94uang@gmail.com. All rights reserved.
//

#import "SUSupportService.h"
#import <Reachability/Reachability.h>
#import "SUUserEntity.h"
#import "ViewController.h"

@interface SUSupportService ()

@property (strong, nonatomic) Reachability *hostReach;

@end

@implementation SUSupportService

/**
 *  关于load方法:
 *      load 方法会在加载类的时候就被调用 也就是 ios 应用启动的时候 就会加载所有的类 就会调用每个类的 + load 方法
 *      如果你实现了 + load 方法
 *      那么当类被加载时它会自动被调用 这个调用非常早
 *      如果你实现了一个应用或框架的 + load 并且你的应用链接到这个框架上了
 *      那么 ＋ load 会在 main() 函数之前被调用
 *      如果你在一个可加载的 bundle 中实现了 + load 那么它会在 bundle 加载的过程中被调用。
 */
+ (void)load {
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
        
        slog(@"开始运行:%@",[infoDictionary objectForKey:@"CFBundleDisplayName"]);
        
        slog(@"Build 版本:%@",[infoDictionary objectForKey:(NSString *)kCFBundleVersionKey]);
        
        [[self class] setupCoreData];                       // 配置核心数据
        [[self class] setupWholeStyle];                     // 配置全局样式
        [[self class] setupWholeData];                      // 配置全局数据
        [[self class] setupKeyBord];                        // 配置键盘管理
        [[self class] setupOutsideSDK];                     // 配置第三方SDK
        [[self class] setupRootController];                 // 配置根控制器
        
        
    });
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    SUSupportService *support = [super allocWithZone:zone];
    
    [support setupReachability];
    
    return support;
}

#pragma mark - 设置程序根控制器
+ (void)setupRootController {
    
    slog(@"配置程序根控制器");
    
    // 用户登录状态
    BOOL isLogin = SUUserEntity.isLogin;
    
    // 是否是更新后首次启动
    BOOL isFirstRun = SUUserEntity.firstRunAfterUpdate;
    
    if (isLogin) {
        
        ViewController *controller = [ViewController new];
        
        SUAppDelegate* delegate = (SUAppDelegate *)UIApplication.sharedApplication.delegate;
        
        delegate.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
        delegate.window.backgroundColor = [UIColor whiteColor];
    
        delegate.window.rootViewController = controller;
        
        [delegate.window makeKeyAndVisible];
        
    }else {
        
        
    }

}

#pragma mark - 键盘回收相关
+ (void)setupKeyBord {
    
    slog(@"配置键盘管理");
    
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    manager.enable = YES;
    manager.shouldResignOnTouchOutside = YES;
    manager.shouldToolbarUsesTextFieldTintColor = YES;
    manager.enableAutoToolbar = YES;
}

#pragma mark - 第三方SDK
+ (void)setupOutsideSDK {
    
    slog(@"配置第三方SDK");
    
    // Alipay
    // Wechat
    // QQ
    // Sina
    // UMeng
    // Push
    
}

#pragma mark - 配置核心数据
+ (void)setupCoreData {
    
    slog(@"配置核心数据");
}

#pragma mark - 配置全局样式
+ (void)setupWholeStyle {
    
    slog(@"配置全局样式");
}

#pragma mark - 配置全局数据
+ (void)setupWholeData {
    
    slog(@"配置全局数据");
}

#pragma mark - 网络监测
- (void)setupReachability {
    
    slog(@"配置网络管理");
    
    self.hostReach = [Reachability reachabilityForInternetConnection];
    [self.hostReach startNotifier];
    
    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:kReachabilityChangedNotification object:nil] subscribeNext:^(NSNotification * _Nullable x) {
        
        if (![x.object isKindOfClass:[Reachability class]]) return;
        
        Reachability *reachability = x.object;
        
        // 处理网络状态改变 或是下发到各控制器进行不同的处理
        
        slog(@"当前网络状态改变为:%@",reachability.currentReachabilityString);
    }];
}

@end
