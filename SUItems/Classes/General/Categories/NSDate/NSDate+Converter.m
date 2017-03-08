//
//  NSDate+Converter.m
//
//  Created by June on 17/2/16.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "NSDate+Converter.h"

@implementation NSDate (Converter)

/**
 根据日期获取对应的星期
 
 @param formats [周末,周一,周二,周三,周四,周五,周六] [[NSNull null],Sun,Mon,Tue,Wed,Thu,Fri,Sat]
 @return format[day]
 */
- (NSString *)converToWeekdayStringWithFormat:(NSArray *)formats {
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    NSTimeZone *timeZone = [[NSTimeZone alloc] initWithName:@"Asia/Shanghai"];
    
    [calendar setTimeZone: timeZone];
    
    NSCalendarUnit calendarUnit = NSCalendarUnitWeekday;
    
    NSDateComponents *theComponents = [calendar components:calendarUnit fromDate:self];
    
    return [formats objectAtIndex:theComponents.weekday - 1];
}

/**
 将GMT时区转为本地时区时间
 
 @return 转换后的时间
 */
- (NSDate *)GMTTimeZoneconverToLocalTimeZone {
    //设置源日期时区
    NSTimeZone* sourceTimeZone = [NSTimeZone timeZoneWithAbbreviation:@"GMT"];
    //设置转换后的目标日期时区
    NSTimeZone* destinationTimeZone = [NSTimeZone localTimeZone];
    //得到源日期与世界标准时间的偏移量
    NSInteger sourceGMTOffset = [sourceTimeZone secondsFromGMTForDate:self];
    //目标日期与本地时区的偏移量
    NSInteger destinationGMTOffset = [destinationTimeZone secondsFromGMTForDate:self];
    //得到时间偏移量的差值
    NSTimeInterval interval = destinationGMTOffset - sourceGMTOffset;
    //转为现在时间
    return [[NSDate alloc] initWithTimeInterval:interval sinceDate:self];
}

@end
