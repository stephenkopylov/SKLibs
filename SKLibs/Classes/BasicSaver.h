//
//  BasicSaver.h
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//


#import "BasicMTContextProcessor.h"
#import "BasicSyncer.h"
#import "BasicLinker.h"
#import "BasicPostprocessor.h"
@interface BasicSaver : BasicMTContextProcessor
@property (readwrite) BasicSyncer *syncer;
@property (readwrite) BasicLinker *linker;
@property (readwrite) BasicPostprocessor *postprocessor;

-(void)saveObjects:(id)objects withCallback:(void (^)(NSMutableArray *ids))callback;
-(NSMutableArray*)performSaving:(id)objects inContext:(NSManagedObjectContext*)context;
@property (strong,nonatomic) NSMutableDictionary *dictForParse;
@end
