//
//  NSDate+Compare.m
//
//  Created by June on 17/2/16.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "NSDate+Compare.h"

@implementation NSDate (Compare)

/**
 比较两个日期是否是同一天
 
 @param date 需要比较的日期
 @return 是否是同一天
 */
- (BOOL)compareDateIsSameDate:(NSDate *)date {

    if (date == nil) return NO;
    
    NSCalendar* calendar = [NSCalendar currentCalendar];
    
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |  NSCalendarUnitDay;
    NSDateComponents* compSelf = [calendar components:unitFlags fromDate:self];
    NSDateComponents* compDate = [calendar components:unitFlags fromDate:date];
    
    return [compSelf day] == [compDate day]
        && [compSelf month] == [compDate month]
        && [compSelf year]  == [compDate year];
}

/**
 比较两个时间大小 只比较年月日 忽略时分秒
 
 @param date 需要比较的日期
 @see NSOrderedAscending
 */
- (NSComparisonResult)compareDate:(NSDate *)date {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd"];
    
    NSDate *selfDate = [dateFormatter dateFromString:[dateFormatter stringFromDate:self]];
    NSDate *compareDate = [dateFormatter dateFromString:[dateFormatter stringFromDate:date]];
    
    return [selfDate compare:compareDate];
}

/**
 比较两个时间大小
 
 @param date 需要比较的日期
 @see NSDateComponents
 */
- (NSDateComponents *)compareDateAndGainTime:(NSDate *)date {
    
    return [NSDate compareDateAndGainTime:date fromDate:self];
}

+ (NSDateComponents *)compareDateAndGainTime:(NSDate *)date fromDate:(NSDate *)fDate {
    // 当前日历
    NSCalendar *calendar = [NSCalendar currentCalendar];
    // 需要对比的时间数据
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth
    | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    // 对比时间差
    return [calendar components:unit fromDate:fDate toDate:date options:0];
}

@end
