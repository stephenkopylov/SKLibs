//
//  SKBasicProcessor.h
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKBasicSaver.h"
#import "SKBasicLinker.h"
#import "SKBasicPostprocessor.h"
#import "SKBasicContextManager.h"

@interface SKBasicProcessor : NSObject

@property (readwrite) SKBasicSaver *saver;
@property (readwrite) SKBasicLinker *linker;
@property (readwrite) SKBasicPostprocessor *postprocessor;

-(void)processObjects:(id)objects withCallback:(void (^)(NSMutableArray *objects))callback;
-(NSMutableArray*)getObjectsFromIds:(NSMutableArray*)ids;
-(void)linkObjectsWithIds:(NSMutableArray*)ids andCallback:(void (^)(NSMutableArray *ids))callback;
@end
