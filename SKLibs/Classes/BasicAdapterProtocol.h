//
//  BasicDataSourceDelegate.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BasicDataSource;

@protocol BasicAdapterProtocol <NSObject>

@property (strong,nonatomic) BasicDataSource *basicDataSource;

@property (strong ,nonatomic) id view;

-(void)registerView:(id)view;

-(void) setup;

@end
