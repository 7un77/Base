//
//  SUVCProtocol.h
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SUViewModelProtocol;

@protocol SUViewControllerProtocol <NSObject>

@optional

- (instancetype)initWithViewModel:(id <SUViewControllerProtocol>)viewModel;

- (void)bindViewModel;
- (void)addSubviews;
- (void)layoutNavigation;
- (void)getNewData;
- (void)recoverKeyboard;

@end
