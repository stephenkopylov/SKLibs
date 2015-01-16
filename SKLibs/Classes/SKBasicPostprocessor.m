//
//  SKBasicPostprocessor.m
//  Dirtygram
//
//  Created by Admin on 26.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicPostprocessor.h"

@implementation SKBasicPostprocessor
-(NSMutableArray *)postprocessObjects:(NSMutableArray *)ids inContext:(NSManagedObjectContext *)context{
    return ids;
}
@end
