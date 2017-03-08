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


  MD5.m
  iWorking

  Created by June on 16/11/24.
  Copyright © 2016年 北京互信亚软科技有限公司. All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/


#import "MD5.h"
#import <CommonCrypto/CommonDigest.h>

@implementation MD5

+ (NSString*)md532BitLower:(NSString *)string {
    
    const char    *cStr = [string UTF8String];
    unsigned char  result[16];
    CC_MD5(cStr, (unsigned int)strlen(cStr), result);
    
    return [[NSString stringWithFormat:
             @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]] lowercaseString];
}

+ (NSString*)md532BitUpper:(NSString*)inPutText {
    
    const char    *cStr = [inPutText UTF8String];
    unsigned char  result[16];
    CC_MD5(cStr, (unsigned int)strlen(cStr), result);
    
    return [[NSString stringWithFormat:
             @"%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X%02X",
             result[0], result[1], result[2], result[3],
             result[4], result[5], result[6], result[7],
             result[8], result[9], result[10], result[11],
             result[12], result[13], result[14], result[15]] uppercaseString];
}

@end
