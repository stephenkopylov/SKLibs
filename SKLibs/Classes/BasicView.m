//
//  BasicView.m
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicView.h"
#import "BasicDataSource.h"

@implementation BasicView{
    BOOL layouted;
}

-(instancetype)initWithDataSource:(BasicDataSource *)dataSource{
    NSLog(@"initWithDataSource");
    self.basicDataSource = (BasicDataSource*)dataSource;
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
