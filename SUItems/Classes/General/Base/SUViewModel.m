//
//  SUVM.m
//
//  Created by June on 17/3/8.
//  Copyright © 2017年 http://h94uang@gmail.com. All rights reserved.
//

#import "SUViewModel.h"

@implementation SUViewModel
@synthesize request  = _request;

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    
    SUViewModel *viewModel = [super allocWithZone:zone];
    
    if (viewModel) {
        
        [viewModel initialize];
    }
    return viewModel;
}

- (instancetype)initWithModel:(id)model {
    
    self = [super init];
    if (self) {
    }
    return self;
}

- (SURequest *)request {
    
    if (!_request) {
        
        _request = [SURequest request];
    }
    return _request;
}

- (void)initialize { }
@end
