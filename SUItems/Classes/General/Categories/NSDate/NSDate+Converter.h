//
//  NSDate+Converter.h
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
 *  该类提供将NSDate进行转换的便捷方法
 */
@interface NSDate (Converter)

/**
 根据日期获取对应的星期

 @param formats [周末,周一,周二,周三,周四,周五,周六] [Sun,Mon,Tue,Wed,Thu,Fri,Sat]
 @return format[day]
 */
- (NSString *)converToWeekdayStringWithFormat:(NSArray *)formats;

/**
 将GMT时区转为本地时区时间

 @return 转换后的时间
 */
- (NSDate *)GMTTimeZoneconverToLocalTimeZone;

@end
