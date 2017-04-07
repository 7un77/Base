//
//  AppDelegate.m
//  SUItems
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "SUAppDelegate.h"
#import "ViewController.h"
#import "SUSupportService.h"

@interface SUAppDelegate ()

@property (strong, nonatomic) SUSupportService *support;

@end

@implementation SUAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    // 启动程序支持服务
    [self setupSupportService];
    
    return YES;
}

#pragma mark - 配置支持服务
- (void)setupSupportService {
    
    self.support = [SUSupportService new];
    
    [self setupRootViewController];
}

- (void)setupRootViewController {
    
    ViewController *controller = [ViewController new];
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    self.window.backgroundColor = [UIColor whiteColor];
    
    self.window.rootViewController = controller;
    
    [self.window makeKeyAndVisible];
}


@end
