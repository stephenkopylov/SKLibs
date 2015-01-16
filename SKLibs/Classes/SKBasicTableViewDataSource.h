//
//  SKBasicTableViewDataSource.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicArrayDataSource.h"

@class SKBasicTableViewAdapter;

@interface SKBasicTableViewDataSource : SKBasicArrayDataSource

@property (strong,nonatomic) SKBasicTableViewAdapter *adapter;

@end
