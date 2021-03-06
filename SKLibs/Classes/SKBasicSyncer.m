//
//  SKBasicSyncer.m
//  Dirtygram
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicSyncer.h"

@implementation SKBasicSyncer {
    NSMutableDictionary *syncedArrays;
    NSLock *lock;
}
static id shared = nil;
+ (instancetype)sharedInstance {
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        shared = [(SKBasicSyncer *) [super alloc] initUniqueInstance];
    });
    return shared;
}
- (instancetype)initUniqueInstance {
    syncedArrays = [[NSMutableDictionary alloc] init];
    lock = [[NSLock alloc] init];
    return (SKBasicSyncer *) [super init];
}
-(BOOL)checkArrayWithId:(NSString*)arrayId forValue:(NSString*)value{
    NSLog(@"checkArrayWithId");
    [lock lock];
    BOOL result;
    NSMutableArray *currentArray = syncedArrays[arrayId];
    if(currentArray==nil){
        currentArray = [[NSMutableArray alloc] init];
    }
    result = [currentArray containsObject:value];
    [currentArray addObject:value];
    syncedArrays[arrayId] = currentArray;
    [lock unlock];
    return result;
}
@end
