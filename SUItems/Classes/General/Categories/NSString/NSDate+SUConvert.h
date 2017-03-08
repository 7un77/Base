//
//  NSDate+SUConvert.h
//
//  Created by June on 17/3/8.
//  Copyright © 2017年 http://h94uang@gmail.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (SUConvert)

/**
 将NSDate按照传入格式转成NSString
 
 @param date            NSDate
 @param formatterString formatterString
 
 @return 转换后的时间字符串
 */
+ (NSString *)dateToString:(NSDate *)date formatterString:(NSString *)formatterString;

/**
 将类似于'/Date(1456478126000+0800)/'格式的时间进行转换
 
 @param timestamp as '/Date(1456478126000)/'
 @param formatterString formatterString
 
 @return 转换后的时间
 */
+ (NSString *)timestampToString:(NSString *)timestamp formatterString:(NSString *)formatterString;

/**
 将double转为NSString

 @param d   double
 @return    转换后的double字符串
 */
+ (NSString *)doubleToString:(double)d;

/**
 时间戳转为NSDate

 @return NSDate
 */
+ (NSDate *)timestampToDate:(NSString *)date;

@end
