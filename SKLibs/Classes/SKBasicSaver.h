//
//  SKBasicSaver.h
//  Dirtygram
//
//  Created by Admin on 25.10.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//


#import "SKBasicMTContextProcessor.h"
#import "SKBasicSyncer.h"
#import "SKBasicLinker.h"
#import "SKBasicPostprocessor.h"
@interface SKBasicSaver : SKBasicMTContextProcessor
@property (readwrite) SKBasicSyncer *syncer;
@property (readwrite) SKBasicLinker *linker;
@property (readwrite) SKBasicPostprocessor *postprocessor;

-(void)saveObjects:(id)objects withCallback:(void (^)(NSMutableArray *ids))callback;
-(NSMutableArray*)performSaving:(id)objects inContext:(NSManagedObjectContext*)context;
@property (strong,nonatomic) NSMutableDictionary *dictForParse;
@end
