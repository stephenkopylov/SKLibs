//
//  BasicTableViewAdapter.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicTableViewAdapter.h"
#import "BasicLoadingTableViewCell.h"

@implementation BasicTableViewAdapter
-(void)registerView:(id)view{
    self.view = view;
    self.view.delegate = self;
    self.view.dataSource = self;
    [self.view registerClass:[BasicLoadingTableViewCell class] forCellReuseIdentifier:@"loadingCell"];
    if(self.view.refreshEnabled){
        [self.view.refreshControl addTarget:self action:@selector(refreshControlAction:) forControlEvents:UIControlEventValueChanged];
    }
}

- (void)refreshControlAction:(id)sender {
    [self.basicDataSource refreshData];
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSUInteger numberOfItems = [self numberOfItemsInSection:section];
    if(self.view.loadingMoreEnabled){
        numberOfItems += 1;
    }
    return numberOfItems;
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (self.view.loadingMoreEnabled && indexPath.row ==  [self tableView:tableView numberOfRowsInSection:indexPath.section] - 1)
    {
        [self.basicDataSource loadMore];
        BasicLoadingTableViewCell *cell = [self.view dequeueReusableCellWithIdentifier:@"loadingCell" forIndexPath:indexPath];
        [self prepareLoadingCell:cell withIndexPath:indexPath];
        return cell;
    }
    else
    {
        return [self cellForItemAtIndexPath:indexPath];
    }
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (self.view.loadingMoreEnabled && indexPath.row ==  [self tableView:tableView numberOfRowsInSection:indexPath.section] - 1) {
        return  50;
    }else{
        return [self heightForRowAtIndexPath:indexPath];
    }
}


- (BasicLoadingTableViewCell *)prepareLoadingCell:(BasicLoadingTableViewCell *)cell withIndexPath:(NSIndexPath *)indexPath {
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
