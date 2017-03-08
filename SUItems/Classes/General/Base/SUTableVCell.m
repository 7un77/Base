//
//  SUTableVCell.m
//
//  Created by June on 17/3/7.
//  Copyright © 2017年 http://h94uang@gmail.com All rights reserved.
//

#import "SUTableVCell.h"

@implementation SUTableVCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        [self setupViews];
        [self bindViewModel];
    }
    return self;
}

- (void)setupViews { }

- (void)bindViewModel { }

@end
