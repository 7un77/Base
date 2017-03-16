//
//  SUThirdPartService.m
//  SUItems
//
//  Created by June on 17/3/9.
//  Copyright © 2017年 http://h94uang@gmail.com. All rights reserved.
//

#import "SUThirdPartService.h"

@implementation SUThirdPartService

+ (void)load {
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        [[self class] initCoredata];
        
        [[self class] setKeyBord];
        
        [[self class] testReachableStatus];
        
    });
}

#pragma mark - 初始化核心数据
+ (void)initCoredata {
    
}

#pragma mark - 键盘回收相关
+ (void)setKeyBord {
    
    IQKeyboardManager *manager = [IQKeyboardManager sharedManager];
    manager.enable = YES;
    manager.shouldResignOnTouchOutside = YES;
    manager.shouldToolbarUsesTextFieldTintColor = YES;
    manager.enableAutoToolbar = YES;
}

#pragma mark － 检测网络相关
+ (void)testReachableStatus {
    
}
@end
