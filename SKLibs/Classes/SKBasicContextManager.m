//
//  SKBasicContextManager.m
//  Piquadro
//
//  Created by Admin on 09.11.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicContextManager.h"

@implementation SKBasicContextManager
- (instancetype)init {
    self.mainContext = [[SKBasicCoredataManager sharedInstance] managedObjectContext];
    return (SKBasicContextManager *) [super init];
}
@end
