//
//  SKBasicPostprocessor.h
//  Dirtygram
//
//  Created by Admin on 26.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicMTContextProcessor.h"

@interface SKBasicPostprocessor : NSObject
-(NSMutableArray*)postprocessObjects:(NSMutableArray*)ids inContext:(NSManagedObjectContext*)context;
@end
