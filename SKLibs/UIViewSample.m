//
//  UIViewSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "UIViewSample.h"
#import "viewSample.h"
#import <Masonry.h>
#import "viewDataSourceSample.h"

@interface UIViewSample ()

@end

@implementation UIViewSample

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blueColor]];
    viewSample *sample = [[viewSample alloc] initWithDataSource:[[viewDataSourceSample alloc] init]];
    sample.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:sample];
    [sample mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(200);
        UIView *topLG = (UIView*)self.topLayoutGuide;
        make.top.equalTo(topLG.mas_bottom);
        make.left.equalTo(self.view);
        make.right.equalTo(self.view);
    }];
}



@end
