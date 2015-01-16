//
//  BasicSyncer.h
//  Dirtygram
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BasicSyncer : NSObject
+ (instancetype)sharedInstance;

+ (instancetype)alloc __attribute__((unavailable("alloc not available, call sharedInstance instead")));

- (instancetype)init __attribute__((unavailable("init not available, call sharedInstance instead")));

+ (instancetype)new __attribute__((unavailable("new not available, call sharedInstance instead")));

-(BOOL)checkArrayWithId:(NSString*)arrayId forValue:(NSString*)value;
@end
