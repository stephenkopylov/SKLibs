//
//  CollectionViewSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "CollectionViewSample.h"
#import "SKBasicCollectionView.h"
#import "cvDataSourceSample.h"
#import <Masonry.h>

@implementation CollectionViewSample
-(void)viewDidLoad{
    self.view.backgroundColor = [UIColor whiteColor];
    SKBasicCollectionView *basicCollectionView = [[SKBasicCollectionView alloc] initWithDataSource:[[cvDataSourceSample alloc] init]];
    basicCollectionView.backgroundColor = [UIColor redColor];
    basicCollectionView.alwaysBounceVertical = YES;
    basicCollectionView.refreshEnabled = YES;
    [self.view addSubview:basicCollectionView];
    [basicCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}
@end
