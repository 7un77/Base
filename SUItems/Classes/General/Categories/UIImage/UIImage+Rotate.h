//
//  UIImage+Rotate.h
//
//  Created by June on 17/2/6.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Rotate)

/**
 将某张图片旋转
 */
+ (UIImage *)image:(UIImage *)image rotation:(UIImageOrientation)orientation;

@end
