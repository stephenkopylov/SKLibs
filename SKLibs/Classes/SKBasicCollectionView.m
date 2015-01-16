//
//  SKBasicCollectionView.m
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicCollectionView.h"
#import "SKBasicDataSource.h"
#import "SKBasicCollectionViewDataSource.h"

@implementation SKBasicCollectionView {
    BOOL layouted;
}
@synthesize basicDataSource;

-(instancetype)initWithDataSource:(SKBasicDataSource *)dataSource{
    self.basicDataSource = (SKBasicCollectionViewDataSource *)dataSource;
    return [super initWithFrame:CGRectMake(0, 0, 0, 0) collectionViewLayout:[self getFlowLayout]];
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

-(void)setup{
    
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
