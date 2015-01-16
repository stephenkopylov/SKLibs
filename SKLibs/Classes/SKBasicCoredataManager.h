//
//  CoredataManager.h
//  Piquadro
//
//  Created by Stephen Kopylov on 30/10/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@interface SKBasicCoredataManager : NSObject

+ (instancetype)sharedInstance;

+ (instancetype)alloc __attribute__((unavailable("alloc not available, call sharedInstance instead")));

- (instancetype)init __attribute__((unavailable("init not available, call sharedInstance instead")));

+ (instancetype)new __attribute__((unavailable("new not available, call sharedInstance instead")));

@property(nonatomic, retain, readonly) NSManagedObjectModel *managedObjectModel;
@property(nonatomic, retain, readonly) NSManagedObjectContext *managedObjectContext;
@property(nonatomic, retain, readonly) NSPersistentStoreCoordinator *persistentStoreCoordinator;
-(void)resetAll;
- (NSURL *)applicationDocumentsDirectory; // nice to have to reference files for core data
@end
