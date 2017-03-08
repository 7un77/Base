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

#import <UIKit/UIKit.h>

/**
 将颜色绘制成图片
 */
@interface UIImage (SolidColor)

/**
 *  Create a solid color image.
 *
 *  @param size  The image size.
 *  @param color The image color.
 *
 *  @return Image.
 */
+ (UIImage *)imageWithSize:(CGSize)size color:(UIColor *)color;

@end
