//
//  BasicTableViewAdapter.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicAdapter.h"
#import "BasicTableView.h"
#import "BasicTableViewDataSource.h"

@class BasicTableViewDataSource;

@interface BasicTableViewAdapter : BasicAdapter<UITableViewDelegate,UITableViewDataSource>

-(NSInteger)numberOfItemsInSection:(NSInteger)section;

-(UITableViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;

- (float)heightForRowAtIndexPath:(NSIndexPath *)indexPath;

@property (strong , nonatomic) BasicTableView *view;

@property (strong,nonatomic) BasicTableViewDataSource *basicDataSource;

@end
