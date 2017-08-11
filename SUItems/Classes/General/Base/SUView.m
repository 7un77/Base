//
//  SUV.m
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "SUView.h"

@implementation SUView

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        [self setupViews];
        [self bindViewModel];
    }
    return self;
}

- (instancetype)initWithViewModel:(id<SUViewModelProtocol>)viewModel {
    
    self = [super init];
    if (self) {
        
        [self setupViews];
        [self bindViewModel];
    }
    return self;
}

- (void)bindViewModel {
}

- (void)setupViews {
}

- (void)addReturnKeyBoard {
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] init];
    tap.numberOfTapsRequired = 1;
    tap.numberOfTouchesRequired = 1;
    [tap.rac_gestureSignal subscribeNext:^(id x) {
    
        SUAppDelegate *appDelegate = (SUAppDelegate *)[[UIApplication sharedApplication] delegate];
        [appDelegate.window endEditing:YES];
    }];
    [self addGestureRecognizer:tap];
}

@end
