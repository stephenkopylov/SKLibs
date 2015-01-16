//
//  BasicPostprocessor.h
//  Dirtygram
//
//  Created by Admin on 26.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicMTContextProcessor.h"

@interface BasicPostprocessor : NSObject
-(NSMutableArray*)postprocessObjects:(NSMutableArray*)ids inContext:(NSManagedObjectContext*)context;
@end
