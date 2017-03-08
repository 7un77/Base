//
//  SURequest.h
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>

@class SURequest;
@protocol SURequestDelegate <NSObject>

- (void)SURequest:(SURequest *)request finished:(NSString *)response;
- (void)SURequest:(SURequest *)request Error:(NSString *)error;

@end

@interface SURequest : NSObject

@property (assign) id <SURequestDelegate> delegate;

/**
 *[AFNetWorking]的operationManager对象
 */
@property (nonatomic, strong) AFHTTPSessionManager* operationManager;

/**
 *当前的请求operation队列
 */
@property (nonatomic, strong) NSOperationQueue* operationQueue;

/**
 *功能: 创建SURequest的对象方法
 */
+ (instancetype)request;

/**
 *功能：GET请求
 *参数：(1)请求的url: urlString
 *     (2)请求成功调用的Block: success
 *     (3)请求失败调用的Block: failure
 */
- (void)GET:(NSString *)URLString
 parameters:(NSDictionary*)parameters
    success:(void (^)(SURequest *, NSString *))success
    failure:(void (^)(SURequest *, NSError *))failure;

/**
 *功能：POST请求
 *参数：(1)请求的url: urlString
 *     (2)POST请求体参数:parameters
 *     (3)请求成功调用的Block: success
 *     (4)请求失败调用的Block: failure
 */
- (void)POST:(NSString *)URLString
  parameters:(NSDictionary*)parameters
     success:(void (^)(SURequest *request, NSString* responseString))success
     failure:(void (^)(SURequest *request, NSError *error))failure;

/**
 *  post请求
 *
 *  @param URLString  请求网址
 *  @param parameters 请求参数
 */
- (void)postWithURL:(NSString *)URLString parameters:(NSDictionary *)parameters;

/**
 *  get 请求
 *
 *  @param URLString 请求网址
 */
- (void)getWithURL:(NSString *)URLString;

/**
 *取消当前请求队列的所有请求
 */
- (void)cancelAllOperations;


@end
