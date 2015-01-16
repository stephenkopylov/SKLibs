//
//  SKBasicCollectionViewDataSource.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicArrayDataSource.h"

@class SKBasicCollectionViewAdapter;

@interface SKBasicCollectionViewDataSource : SKBasicArrayDataSource

@property (strong,nonatomic) SKBasicCollectionViewAdapter *adapter;

@end
