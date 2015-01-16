//
//  viewAdapterSample.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicAdapter.h"
#import "viewSample.h"
#import "viewDataSourceSample.h"

@interface viewAdapterSample : SKBasicAdapter
@property (strong , nonatomic) viewSample *view;
@property (strong,nonatomic) viewDataSourceSample *basicDataSource;
@end
