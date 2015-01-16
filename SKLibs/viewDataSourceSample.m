//
//  viewDataSourceSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "viewDataSourceSample.h"
#import "viewAdapterSample.h"


@implementation viewDataSourceSample{
    User *testUser;
}
-(BasicAdapter *)getAdapter{
    return [[viewAdapterSample alloc] init];
}
-(void)setup{
    testUser = [[User alloc] init];
    [self regenerateData];
}
-(void)regenerateData{
    testUser.username = [NSString stringWithFormat:@"User %d",rand()];
    [self setCurrentData:testUser];
}
@end
