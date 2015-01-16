//
//  viewSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "viewSample.h"
#import <Masonry.h>

@implementation viewSample
-(void)setup{
    self.sampleImage = [[UIImageView alloc] init];
    self.sampleImage.backgroundColor = [UIColor grayColor];
    [self addSubview:self.sampleImage];
    [self.sampleImage mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self);
        make.centerX.equalTo(self);
        make.height.mas_equalTo(50);
        make.width.mas_equalTo(50);
    }];
    
    self.sampleLabel = [[UILabel alloc] init];
    self.sampleLabel.textColor = [UIColor redColor];
    [self addSubview:self.sampleLabel];
    [self.sampleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sampleImage.mas_bottom);
        make.centerX.equalTo(self.sampleImage);
    }];
    
    self.sampleButton = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [self addSubview:self.sampleButton];
    [self.sampleButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.sampleLabel.mas_bottom);
        make.centerX.equalTo(self.sampleLabel);
    }];
}
@end
