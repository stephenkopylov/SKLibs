//
//  SKBasicDataSourceDelegate.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SKBasicDataSourceProtocol <NSObject>

-(void)registerView:(id)view;

-(void)setCurrentData:(id)data;

-(void)setup;

-(void)refreshData;

-(void)loadMore;

-(SKBasicAdapter *)getAdapter;

@property (readwrite) BOOL loading;

@property (strong ,nonatomic) id data;

@property (nonatomic, weak) id <SKBasicDataSourceDelegate> delegate;

@property (readwrite) SKBasicAdapter *adapter;

@end
