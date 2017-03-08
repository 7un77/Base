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


  NSString+MD5.h

  Created by June on 16/11/24.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import <Foundation/Foundation.h>

@interface NSString (MD5)

/**
 *  Get lower MD5 string.
 *
 *  @return Lower MD5 string.
 */
- (NSString *)lowerMD532BitString;

/**
 *  Get upper MD5 string.
 *
 *  @return Upper MD5 string.
 */
- (NSString *)upperMD532BitString;

@end
