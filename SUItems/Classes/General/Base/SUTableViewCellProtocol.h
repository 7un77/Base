//
//  SUTableVCellProtocol.h
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SUTableViewCellProtocol <NSObject>
@optional

- (void)setupViews;
- (void)bindViewModel;

@end
