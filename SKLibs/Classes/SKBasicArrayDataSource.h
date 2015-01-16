//
//  SKBasicArrayDataSource.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicDataSource.h"

@interface SKBasicArrayDataSource : SKBasicDataSource
@property (strong ,nonatomic) NSMutableArray *data;
-(void)setCurrentData:(NSMutableArray*)data;
@end
