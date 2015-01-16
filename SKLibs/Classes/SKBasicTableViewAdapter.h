//
//  SKBasicTableViewAdapter.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicAdapter.h"
#import "SKBasicTableView.h"
#import "SKBasicTableViewDataSource.h"

@class SKBasicTableViewDataSource;

@interface SKBasicTableViewAdapter : SKBasicAdapter <UITableViewDelegate,UITableViewDataSource>

-(NSInteger)numberOfItemsInSection:(NSInteger)section;

-(UITableViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;

- (float)heightForRowAtIndexPath:(NSIndexPath *)indexPath;

@property (strong , nonatomic) SKBasicTableView *view;

@property (strong,nonatomic) SKBasicTableViewDataSource *basicDataSource;

@end
