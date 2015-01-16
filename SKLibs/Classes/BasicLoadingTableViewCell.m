//
//  BasicLoadingTableViewCell.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicLoadingTableViewCell.h"
#import "CC.h"
#import <Masonry.h>

@implementation BasicLoadingTableViewCell

- (void)awakeFromNib {
    // Initialization code
}
-(void)didMoveToSuperview{
    UIActivityIndicatorView *activityIndicator = [[UIActivityIndicatorView alloc] init];
    activityIndicator.color = [CC colorFromHexString:@"#7d582b"];
    [self addSubview:activityIndicator];
    self.activityIndicator = activityIndicator;
    [activityIndicator mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerX.equalTo(activityIndicator.superview);
        make.centerY.equalTo(activityIndicator.superview);
    }];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
    
    // Configure the view for the selected state
}

@end
