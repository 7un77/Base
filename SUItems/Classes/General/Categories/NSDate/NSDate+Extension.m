//
//  NSDate+Extension.m
//
//  Created by June on 17/2/22.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "NSDate+Extension.h"

@implementation NSDate (Extension)

- (NSDateComponents *)components {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
//    calendar.locale = [NSLocale autoupdatingCurrentLocale];
    
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    
    return [calendar components:unitFlags fromDate:self];
}

- (NSInteger)year {
    return [[self components] year];
}

- (NSInteger)month {
    return [[self components] month];
}

-(NSInteger)day {
    return [[self components] day];
}

- (NSInteger)hour {
    return [[self components] hour];
}

- (NSInteger)minute {
    return [[self components] minute];
}

- (NSInteger)second {
    return [[self components] second];
}

- (NSInteger)dayInMonth {
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
//    calendar.locale = [NSLocale autoupdatingCurrentLocale];
    
    NSRange range = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:self];
    
    return range.length;
}

@end
