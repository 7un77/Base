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


  NSString+MD5.m

  Created by June on 16/11/24.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import "NSString+MD5.h"
#import "MD5.h"

@implementation NSString (MD5)

- (NSString *)lowerMD532BitString {

    return [MD5 md532BitLower:self];
}

- (NSString *)upperMD532BitString {

    return [MD5 md532BitUpper:self];
}

@end
