//
//  SKBasicDataSourceDelegate.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKBasicDataSource;

@protocol SKBasicAdapterProtocol <NSObject>

@property (strong,nonatomic) SKBasicDataSource *basicDataSource;

@property (strong ,nonatomic) id view;

-(void)registerView:(id)view;

-(void) setup;

@end
