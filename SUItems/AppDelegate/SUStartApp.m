//
//  SUStartApp.m
//  SUItems
//
//  Created by June on 17/3/9.
//  Copyright © 2017年 http://h94uang@gmail.com. All rights reserved.
//

#import "SUStartApp.h"

@implementation SUStartApp

+ (void)load {
    
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        [[self class] initUserData];
        
    });
}

#pragma mark - 初始化个人数据
+ (void)initUserData {
    
}

@end
