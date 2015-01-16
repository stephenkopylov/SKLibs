//
//  cvDataSourceSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "cvDataSourceSample.h"
#import "cvAdapterSample.h"

@implementation cvDataSourceSample

-(void)setup{
    [self setCurrentData:[[NSMutableArray alloc] initWithObjects:@"1",@"2", nil]];
}

-(SKBasicAdapter *)getAdapter{

    return [[cvAdapterSample alloc] init];
}

-(void)refreshData{
    [self setCurrentData:[[NSMutableArray alloc] initWithObjects:@"1",@"2", @"3", nil]];
}

@end
