//
//  BasicMTContextProcessor.h
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface BasicMTContextProcessor:NSObject
-(void)startMultithreadContextOperationWithCallback:(void (^)(NSMutableArray *ids))callback;
-(NSMutableArray*)performOperationInContext:(NSManagedObjectContext*)context;
-(void)saveContext:(NSManagedObjectContext*)context withCallback:(void (^)())callback;
@end
