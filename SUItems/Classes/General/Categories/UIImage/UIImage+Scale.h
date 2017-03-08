//
//  UIImage+Scale.h
//
//  Created by ECO on 16/11/10.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <UIKit/UIKit.h>

/**
 UIImage 缩放
 */
@interface UIImage (Scale)

- (UIImage*)scaleToSize:(CGSize)size;

/**
 等比例缩放

 @param targetWidth 缩放大小

 @return UIImage
 */
- (UIImage *)scaleToWidth:(float)targetWidth;

@end
