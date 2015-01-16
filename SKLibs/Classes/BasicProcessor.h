//
//  BasicProcessor.h
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicSaver.h"
#import "BasicLinker.h"
#import "BasicPostprocessor.h"
#import "BasicContextManager.h"

@interface BasicProcessor : NSObject

@property (readwrite) BasicSaver *saver;
@property (readwrite) BasicLinker *linker;
@property (readwrite) BasicPostprocessor *postprocessor;

-(void)processObjects:(id)objects withCallback:(void (^)(NSMutableArray *objects))callback;
-(NSMutableArray*)getObjectsFromIds:(NSMutableArray*)ids;
-(void)linkObjectsWithIds:(NSMutableArray*)ids andCallback:(void (^)(NSMutableArray *ids))callback;
@end
