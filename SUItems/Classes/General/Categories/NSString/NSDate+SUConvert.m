//
//  NSDate+SUConvert.m
//
//  Created by June on 17/3/8.
//  Copyright © 2017年 http://h94uang@gmail.com. All rights reserved.
//

#import "NSDate+SUConvert.h"

@implementation NSDate (SUConvert)

/**
 将NSDate按照传入格式转成NSString
 
 @param date            NSDate
 @param formatterString formatterString
 
 @return 转换后的时间字符串
 */
+ (NSString *)dateToString:(NSDate *)date formatterString:(NSString *)formatterString {
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:formatterString];
    return [outputFormatter stringFromDate:date];
}

+ (NSString *)doubleToString:(double)d {
    NSString *d2Str       = [NSString stringWithFormat:@"%lf", d];
    NSDecimalNumber *num1 = [NSDecimalNumber decimalNumberWithString:d2Str];
    NSString *strD2       = [num1 stringValue];
    return strD2;
}

/**
 将类似于'/Date(1456478126000+0800)/'格式的时间转成NSString
 
 @param timestamp as '/Date(1456478126000)/'
 @param formatterString formatterString
 
 @return 转换后的时间字符串
 */
+ (NSString *)timestampToString:(NSString *)timestamp formatterString:(NSString *)formatterString {
    NSRange range1 = [timestamp rangeOfString:@"("];//匹配得到的下标
    
    NSRange range2 = [timestamp rangeOfString:@")"];//匹配得到的下标
    
    if (range1.length == 0 || range2.length == 0) {
        return timestamp;
    }
    
    // 截取时间戳（注意，unix时间戳位数不够补0，所以删除最后的0）
    NSRange range3 = NSMakeRange(range1.location + 1, range2.location - range1.location - 1 - 3);
    
    NSString *time = [timestamp substringWithRange:range3];//时间戳
    
    NSTimeInterval timeInterval = [time doubleValue];//秒
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];//日期
    
    return [self dateToString:date formatterString:formatterString];
}

+ (NSDate *)timestampToDate:(NSString *)date {
    NSString *dateFormatterString = @"yyyyMMddHHmmssss";
    NSString *date1 = [self timestampToString:date formatterString:dateFormatterString];
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setLocale:[NSLocale currentLocale]];
    [outputFormatter setDateFormat:dateFormatterString];
    return [outputFormatter dateFromString:date1];
}

@end
