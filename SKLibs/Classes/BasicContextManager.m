//
//  BasicContextManager.m
//  Piquadro
//
//  Created by Admin on 09.11.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicContextManager.h"

@implementation BasicContextManager
- (instancetype)init {
    self.mainContext = [[BasicCoredataManager sharedInstance] managedObjectContext];
    return (BasicContextManager *) [super init];
}
@end
