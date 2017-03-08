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


  NSData+JSONData.h

  Created by June on 16/11/29.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import "NSData+JSONData.h"

@implementation NSData (JSONData)

- (id)toListProperty {
    
    if (self) {
        
        return [NSJSONSerialization JSONObjectWithData:self
                                               options:NSJSONReadingMutableLeaves | NSJSONReadingAllowFragments
                                                 error:nil];
    } else {
        
        return nil;
    }
}

@end
