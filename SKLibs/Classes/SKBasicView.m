//
//  SKBasicView.m
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicView.h"
#import "SKBasicDataSource.h"

@implementation SKBasicView {
    BOOL layouted;
}

-(instancetype)initWithDataSource:(SKBasicDataSource *)dataSource{
    NSLog(@"initWithDataSource");
    self.basicDataSource = (SKBasicDataSource *)dataSource;
    return [super init];
}

-(void)setup{
    
}

-(void)didMoveToSuperview{
}

-(void)layoutSubviews{
    [super layoutSubviews];
    if(!layouted){
        layouted =TRUE;
        [self setup];
        [self.basicDataSource registerView:self];
    }
}

@end
