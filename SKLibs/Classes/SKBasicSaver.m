//
//  SKBasicSaver.m
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicSaver.h"

@implementation SKBasicSaver {
    NSMutableArray* objectsForSave;
}
-(instancetype)init{
    self.syncer = [SKBasicSyncer sharedInstance];
    self.linker = [[SKBasicLinker alloc] init];
    self.postprocessor = [[SKBasicPostprocessor alloc] init];
    return [super init];
}

-(void)saveObjects:(id)objects withCallback:(void (^)(NSMutableArray *ids))callback{
    objectsForSave = objects;
    [self startMultithreadContextOperationWithCallback:^(NSMutableArray *ids) {
        callback(ids);
    }];
}

-(NSMutableArray *)performOperationInContext:(NSManagedObjectContext *)context{
    return [self.postprocessor postprocessObjects:[self.linker linkObjects:[self performSaving:objectsForSave inContext:context] inContext:context] inContext:context];
}

-(NSMutableArray*)performSaving:(id)objects inContext:(NSManagedObjectContext*)context{
    return nil;
}
@end
