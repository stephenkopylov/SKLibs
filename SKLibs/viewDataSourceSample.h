//
//  viewDataSourceSample.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicDataSource.h"
#import "User.h"

@interface viewDataSourceSample : BasicDataSource
@property (strong ,nonatomic) User *data;
-(void)regenerateData;
@end
