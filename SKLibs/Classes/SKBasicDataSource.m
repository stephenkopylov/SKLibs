//
//  SKBasicDataSource.m
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicDataSource.h"

@implementation SKBasicDataSource

@synthesize adapter;
@synthesize delegate;
@synthesize data;

-(void)registerView:(id)view{
    if(adapter==nil){
        adapter = [self getAdapter];
    }
    adapter.basicDataSource = self;
    [adapter registerView:view];
    self.delegate = self.adapter;
    [self setup];
}

-(void)setup{
    
}
 
-(SKBasicAdapter *)getAdapter{
    SKBasicAdapter *newAdapter = [[SKBasicAdapter alloc] init];
    return newAdapter;
}

-(void)refreshData{
    
}

-(void)loadMore{
    
}

-(void)setCurrentData:(id)data{
    self.data = data;
    if(self.delegate !=nil && [self.delegate respondsToSelector:@selector(dataChanged:)]){
        [self.delegate dataChanged:self.data];
    }
}

@end
