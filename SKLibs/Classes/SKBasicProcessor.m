//
//  SKBasicProcessor.m
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicProcessor.h"


@implementation SKBasicProcessor

-(NSMutableArray*)getObjectsFromIds:(NSMutableArray*)ids{
    NSMutableArray *readyObjects = [[NSMutableArray alloc] init];
    for (int i = 0; i<ids.count; i++) {
        NSManagedObject *currUser = [[[SKBasicCoredataManager sharedInstance] managedObjectContext] objectWithID:ids[i]];
        [readyObjects addObject:currUser];
    }
    return readyObjects;
}
@end
