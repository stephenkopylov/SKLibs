//
//  BasicCollectionViewAdapter.m
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicCollectionViewAdapter.h"
#import "BasicLoadingCell.h"

@implementation BasicCollectionViewAdapter

-(void)registerView:(id)view{
    self.view = view;
    self.view.delegate = self;
    self.view.dataSource = self;
    [self.view  registerClass:[BasicLoadingCell class] forCellWithReuseIdentifier:@"loadingCell"];
    if(self.view.refreshEnabled){
        [self.view.refreshControl addTarget:self action:@selector(refreshControlAction:) forControlEvents:UIControlEventValueChanged];
    }
}

- (void)refreshControlAction:(id)sender {
    [self.basicDataSource refreshData];
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    NSUInteger numberOfItems = [self numberOfItemsInSection:section];
    if(self.view.loadingMoreEnabled){
        numberOfItems += 1;
    }
    return numberOfItems;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    if (self.view.loadingMoreEnabled && indexPath.row == [self collectionView:collectionView numberOfItemsInSection:indexPath.section] - 1)
    {
        [self.basicDataSource loadMore];
        BasicLoadingCell *cell = [self.view dequeueReusableCellWithReuseIdentifier:@"loadingCell" forIndexPath:indexPath];
        [self prepareLoadingCell:cell withIndexPath:indexPath];
        return cell;
    }
    else
    {
        return [self cellForItemAtIndexPath:indexPath];
    }
}
- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
        NSLog(@"sizeForItemAtIndexPath");
    if (self.view.loadingMoreEnabled && indexPath.row == [self collectionView:collectionView numberOfItemsInSection:indexPath.section] - 1) {
        return CGSizeMake(self.view.frame.size.width, 50);
    }else{
        return [self sizeForItemAtIndexPath:indexPath];
    }
}
- (BasicLoadingCell *)prepareLoadingCell:(BasicLoadingCell *)cell withIndexPath:(NSIndexPath *)indexPath {
    [cell.activityIndicator startAnimating];
    return cell;
}

-(NSInteger)numberOfItemsInSection:(NSInteger)section{
    return 0;
}

-(UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    return nil;
}

-(CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return CGSizeMake(0, 0);
}

-(void)dataChanged:(NSMutableArray *)newData{
    if(self.view.refreshEnabled){
        [self.view.refreshControl endRefreshing];
    }
}

@end
