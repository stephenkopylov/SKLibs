//
//  SKBasicTableView.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicTableView.h"
#import "SKBasicDataSource.h"
#import "SKBasicTableViewDataSource.h"


@implementation SKBasicTableView {
    BOOL layouted;
}

@synthesize basicDataSource;

-(instancetype)initWithDataSource:(SKBasicDataSource *)dataSource{
    self.basicDataSource = (SKBasicTableViewDataSource *)dataSource;
    return [super init];
}
-(void)didMoveToSuperview{
    if(self.refreshEnabled){
        self.refreshControl = [[UIRefreshControl alloc] init];
        self.refreshControl.tintColor = [UIColor grayColor];
        [self addSubview:self.refreshControl];
    }
}
-(UICollectionViewFlowLayout *)getFlowLayout{
    UICollectionViewFlowLayout *flowLaout = [[UICollectionViewFlowLayout alloc] init];
    return flowLaout;
}

-(void)layoutSubviews{
    [super layoutSubviews];
    if(!layouted){
        layouted =TRUE;
        [self setup];
        [self.basicDataSource registerView:self];
    }
}

-(void)setup{
    
}

@end
