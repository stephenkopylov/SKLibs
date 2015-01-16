//
//  BasicCollectionViewDataSource.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicArrayDataSource.h"

@class BasicCollectionViewAdapter;

@interface BasicCollectionViewDataSource : BasicArrayDataSource

@property (strong,nonatomic) BasicCollectionViewAdapter *adapter;

@end
