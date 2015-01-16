//
//  BasicLinker.h
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicMTContextProcessor.h"

@interface BasicLinker : NSObject
-(NSMutableArray*)linkObjects:(NSMutableArray*)ids inContext:(NSManagedObjectContext*)context;
@end
