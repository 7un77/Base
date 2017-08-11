//
//  SUVMProtocol.h
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 数据刷新状态

 - HeaderRefresh_HasMoreData:   下拉还有更多数据
 - HeaderRefresh_HasNoMoreData: 下拉没有更多数据
 - FooterRefresh_HasMoreData:   上拉还有更多数据
 - FooterRefresh_HasNoMoreData: 上拉没有更多数据
 - RefreshError:                刷新错误
 - RefreshUI:                   仅刷新UI布局
 */
typedef NS_ENUM(NSUInteger,RefreshDataStatus) {
    HeaderRefresh_HasMoreData = 1,
    HeaderRefresh_HasNoMoreData,
    FooterRefresh_HasMoreData,
    FooterRefresh_HasNoMoreData,
    RefreshError,
    RefreshUI
};

// * 枚举映射 -> 字符串
// * NSString *refreshStatus = RefreshDataStatusMapper[FooterRefresh_HasNoMoreData];
const NSString *RefreshDataStatusMapper[] = {
    [HeaderRefresh_HasMoreData]     = @"下拉还有更多数据",
    [HeaderRefresh_HasNoMoreData]   = @"下拉已经没有数据了",
    [FooterRefresh_HasMoreData]     = @"上拉还有更多数据",
    [FooterRefresh_HasNoMoreData]   = @"上拉已经没有数据了",
    [RefreshError]                  = @"刷新失败了",
    [RefreshUI]                     = @"仅刷新布局"
};

@protocol SUViewModelProtocol <NSObject>

@optional

- (instancetype)initWithModel:(id)model;

@property (strong, nonatomic) SURequest *request;

/**
 *  初始化
 */
- (void)initialize;

@end
