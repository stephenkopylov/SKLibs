//
//  BasicLoadingCell.m
//  Yesno
//
//  Created by Stephen Kopylov on 02/12/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicLoadingCell.h"
#import "CC.h"
#import <Masonry.h>

@implementation BasicLoadingCell
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
@end
