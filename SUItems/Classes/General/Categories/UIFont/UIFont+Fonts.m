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


  UIFont+Fonts.h

  Created by June on 16/11/29.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import "UIFont+Fonts.h"

@implementation UIFont (Fonts)

#pragma mark - Added font.

+ (UIFont *)HYQiHeiWithFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"HYQiHei-BEJF" size:size];
}

+ (UIFont *)MFLiHeiNoncommercialRegularFontSize:(CGFloat)size {
    return [UIFont fontWithName:@"MFLiHei_Noncommercial-Regular" size:size];
}

#pragma mark - System font.

+ (UIFont *)AppleSDGothicNeoThinWithFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"AppleSDGothicNeo-Thin" size:size];
}

+ (UIFont *)AvenirWithFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"Avenir" size:size];
}

+ (UIFont *)AvenirLightWithFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"Avenir-Light" size:size];
}

+ (UIFont *)HeitiSCWithFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"Heiti SC" size:size];
}

+ (UIFont *)HelveticaNeueFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"HelveticaNeue" size:size];
}

+ (UIFont *)HelveticaNeueBoldFontSize:(CGFloat)size {
    
    return [UIFont fontWithName:@"HelveticaNeue-Bold" size:size];
}

+ (UIFont *)PingFangSCSemiboldFontSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangSC-Semibold" size:size];
}

+ (UIFont *)PingFangSCRegularFontSize:(CGFloat)size {
    return [UIFont fontWithName:@"PingFangSC-Regular" size:size];
}

@end
