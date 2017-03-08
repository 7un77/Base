//
//  NSDate+Extension.h
//
//  Created by June on 17/2/22.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSDate+Compare.h"
#import "NSDate+Converter.h"

@interface NSDate (Extension)

@property (nonatomic, readonly) NSInteger year;
@property (nonatomic, readonly) NSInteger month;
@property (nonatomic, readonly) NSInteger day;
@property (nonatomic, readonly) NSInteger hour;
@property (nonatomic, readonly) NSInteger minute;
@property (nonatomic, readonly) NSInteger second;
// 当前月份天数
@property (nonatomic, readonly) NSInteger dayInMonth;

@end
