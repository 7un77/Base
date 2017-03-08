//
//  NSDate+Compare.h
//
//  Created by June on 17/2/16.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 *  @author June, 17-02-16 16:26:09
 *  
 *  @version 1.0
 *
 *  该类提供对NSDate之间进行比较的便捷方法
 */
@interface NSDate (Compare)

/**
 比较两个日期是否是同一天

 @param date 需要比较的日期
 @return 是否是同一天
 */
- (BOOL)compareDateIsSameDate:(NSDate *)date;

/**
 比较两个时间大小 只比较年月日 忽略时分秒

 @param date 需要比较的日期
 @see NSOrderedAscending
 */
- (NSComparisonResult)compareDate:(NSDate *)date;

/**
 比较两个时间大小

 @param date 需要比较的日期
 @see NSDateComponents
 */
- (NSDateComponents *)compareDateAndGainTime:(NSDate *)date;
+ (NSDateComponents *)compareDateAndGainTime:(NSDate *)date fromDate:(NSDate *)fDate;

@end
