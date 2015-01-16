//
//  BasicTableViewDataSource.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicArrayDataSource.h"

@class BasicTableViewAdapter;

@interface BasicTableViewDataSource : BasicArrayDataSource

@property (strong,nonatomic) BasicTableViewAdapter *adapter;

@end
