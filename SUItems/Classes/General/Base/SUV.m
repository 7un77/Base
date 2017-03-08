//
//  SUV.m
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "SUV.h"

@implementation SUV

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self yd_setupViews];
        [self yd_bindViewModel];
    }
    return self;
}

- (instancetype)initWithViewModel:(id<SUVMProtocol>)viewModel {
    
    self = [super init];
    if (self) {
        
        [self yd_setupViews];
        [self yd_bindViewModel];
    }
    return self;
}

- (void)yd_bindViewModel {
}

- (void)yd_setupViews {
}

- (void)yd_addReturnKeyBoard {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 1;
    tap.numberOfTouchesRequired = 1;
//    [tap.rac_gestureSignal subscribeNext:^(id x) {
    
//        AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
//        [appDelegate.window endEditing:YES];
//    }];
//    [self addGestureRecognizer:tap];
}

@end
