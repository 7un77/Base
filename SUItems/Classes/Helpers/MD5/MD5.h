/**********//**********//**********//**********//**********//**********//**********//*
 .--,       .--,
( (  \.---./  ) )
 '.__/o   o\__.'
    {=  ^  =}
     >  -  <
    /       \
   //       \\
  //|   .   |\\             高山仰止,景行行止.虽不能至,心向往之。
  "'\       /'"_.-~^`'-.
     \  _  /--'         `
   ___)( )(___
  (((__) (__)))


  MD5.h
  iWorking

  Created by June on 16/11/24.
  Copyright © 2016年 北京互信亚软科技有限公司. All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import <Foundation/Foundation.h>

@interface MD5 : NSObject

/**
 *  Transform normal string to MD5's 32 bit lower string.
 *
 *  @param string Normal string.
 *
 *  @return MD5's 32 bit lower string.
 */
+ (NSString *)md532BitLower:(NSString *)string;

/**
 *  Transform normal string to MD5's 32 bit lower string.
 *
 *  @param string Normal string.
 *
 *  @return MD5's 32 bit upper string.
 */
+ (NSString *)md532BitUpper:(NSString*)string;

@end
