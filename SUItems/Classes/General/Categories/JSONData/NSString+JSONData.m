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


  NSString+JSONData.h

  Created by June on 16/11/29.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import "NSString+JSONData.h"

@implementation NSString (JSONData)

- (id)toListProperty {
    
    if (self) {
        
        NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
        return [NSJSONSerialization JSONObjectWithData:jsonData
                                               options:NSJSONReadingMutableLeaves | NSJSONReadingAllowFragments
                                                 error:nil];
        
    } else {
        
        return nil;
    }
}

@end
