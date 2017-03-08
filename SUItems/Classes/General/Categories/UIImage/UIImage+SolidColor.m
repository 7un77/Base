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


  UIImage+SolidColor.h

  Created by June on 16/11/29.
  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.

*//**********//**********//**********//**********//**********//**********//**********/

#import "UIImage+SolidColor.h"

@implementation UIImage (SolidColor)

+ (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)color {
    
    UIGraphicsBeginImageContextWithOptions(size, 0, [UIScreen mainScreen].scale);
    [color set];
    UIRectFill(CGRectMake(0, 0, size.width, size.height));
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

@end
