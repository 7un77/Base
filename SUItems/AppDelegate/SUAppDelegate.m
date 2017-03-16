//
//  AppDelegate.m
//  SUItems
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "SUAppDelegate.h"
#import "ViewController.h"

@interface SUAppDelegate ()

@end

@implementation SUAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [self setupRootViewController];             // 配置根控制器
    [self setupReachability];                   // 配置网络监测
    [self setupKeyBoardManager];                // 配置键盘管理
    [self setupWholeStyle];                     // 配置全局样式
    [self setupWholeData];                      // 配置全局数据
    [self setupOutsideSDK];                     // 配置第三方SDK
    
    return YES;
}

- (void)setupRootViewController {
    
    ViewController *controller = [ViewController new];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = controller;
    
    [self.window makeKeyAndVisible];
    
}

- (void)setupReachability {
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(reachabilityDidChanged:)
                                                 name:kReachabilityChangedNotification
                                               object:nil];
}

- (void)setupKeyBoardManager {
    
    [[IQKeyboardManager sharedManager] setEnable:YES];
    
}

- (void)setupWholeStyle {
    
}

- (void)setupWholeData {
    
}

- (void)setupOutsideSDK {
    
    // Alipay
    // Wechat
    // QQ
    // Sina
    // UMeng
    // push
    
}

/**
 监听网络状态改变
 
 @param notification NSNotification
 */
- (void)reachabilityDidChanged:(NSNotification *)notification {
    
    if (![notification.object isKindOfClass:[Reachability class]]) return;
    
    Reachability *reachability = notification.object;
    
    // 处理网络状态改变 或是下发到各控制器进行不同的处理
    
    sLog(@"%@",reachability.currentReachabilityString);
    
}

@end
