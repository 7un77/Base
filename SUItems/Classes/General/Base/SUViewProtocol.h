//
//  SUVProtocol.h
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SUViewModelProtocol;

@protocol SUViewProtocol <NSObject>

@optional

- (instancetype)initWithViewModel:(id <SUViewModelProtocol>)viewModel;

- (void)bindViewModel;
- (void)setupViews;
- (void)addReturnKeyBoard;

@end
