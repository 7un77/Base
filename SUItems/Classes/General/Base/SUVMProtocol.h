//
//  SUVMProtocol.h
//  SUItems
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    HeaderRefresh_HasMoreData = 1,
    HeaderRefresh_HasNoMoreData,
    FooterRefresh_HasMoreData,
    FooterRefresh_HasNoMoreData,
    RefreshError,
    RefreshUI,
} RefreshDataStatus;

@protocol SUVMProtocol <NSObject>

@optional

- (instancetype)initWithModel:(id)model;

//@property (strong, nonatomic)CMRequest *request;

/**
 *  初始化
 */
- (void)initialize;

@end
