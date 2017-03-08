//
//  SURequest.m
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "SURequest.h"

@implementation SURequest

+ (instancetype)request {
    return [[self alloc] init];
}

- (instancetype)init {
    self = [super init];
    if (self) {
        self.operationManager = [AFHTTPSessionManager manager];
    }
    return self;
}

- (void)GET:(NSString *)URLString
 parameters:(NSDictionary*)parameters
    success:(void (^)(SURequest *, NSString *))success
    failure:(void (^)(SURequest *, NSError *))failure {
    
    self.operationQueue=self.operationManager.operationQueue;
    self.operationManager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    
    [self.operationManager GET:URLString parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
        NSLog(@"%@",downloadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
         NSString *responseJson = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"[SURequest]: %@",responseJson);
        success(self,responseJson);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"[SURequest]: %@",error.localizedDescription);
        failure(self,error);
    }];
    
}

- (void)POST:(NSString *)URLString
  parameters:(NSDictionary*)parameters
     success:(void (^)(SURequest *request, NSString* responseString))success
     failure:(void (^)(SURequest *request, NSError *error))failure{
    
    self.operationQueue = self.operationManager.operationQueue;
    self.operationManager.responseSerializer = [AFHTTPResponseSerializer serializer];
   
    [self.operationManager POST:URLString parameters:parameters progress:^(NSProgress * _Nonnull uploadProgress) {
        
        NSLog(@"%@",uploadProgress);
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        NSString* responseJson = [[NSString alloc]initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"[SURequest]: %@",responseJson);
        success(self,responseJson);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"[SURequest]: %@",error.localizedDescription);
        failure(self,error);

    }];
    
}

- (void)postWithURL:(NSString *)URLString parameters:(NSDictionary *)parameters {
    
    [self POST:URLString
    parameters:parameters
       success:^(SURequest *request, NSString *responseString) {
           if ([self.delegate respondsToSelector:@selector(SURequest:finished:)]) {
               [self.delegate SURequest:request finished:responseString];
               
           }
       }
       failure:^(SURequest *request, NSError *error) {
           if ([self.delegate respondsToSelector:@selector(SURequest:Error:)]) {
               [self.delegate SURequest:request Error:error.description];
           }
       }];
}

- (void)getWithURL:(NSString *)URLString {
    
    [self GET:URLString parameters:nil success:^(SURequest *request, NSString *responseString) {
        if ([self.delegate respondsToSelector:@selector(SURequest:finished:)]) {
            [self.delegate SURequest:request finished:responseString];
        }
    } failure:^(SURequest *request, NSError *error) {
        if ([self.delegate respondsToSelector:@selector(SURequest:Error:)]) {
            [self.delegate SURequest:request Error:error.description];
        }
    }];
}

- (void)cancelAllOperations{
    [self.operationQueue cancelAllOperations];
}

@end
