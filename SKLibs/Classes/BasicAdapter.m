//
//  BasicAdapter.m
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicAdapter.h"

@implementation BasicAdapter
@synthesize basicDataSource;
-(void)registerView:(id)view{
    self.view = (UIView*)view;
    [self setup];
}

-(void)setup{
    
}
@end
