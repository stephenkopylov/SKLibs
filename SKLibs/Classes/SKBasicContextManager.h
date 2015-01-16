//
//  SKBasicContextManager.h
//  Piquadro
//
//  Created by Admin on 09.11.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "SKBasicCoredataManager.h"

@interface SKBasicContextManager : NSObject
@property (readwrite) NSManagedObjectContext *mainContext;
@end
