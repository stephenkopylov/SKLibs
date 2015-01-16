//
//  SKBasicDataSourceDelegate.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKBasicDataSource;

@protocol SKBasicViewProtocol <NSObject>

-(instancetype) initWithDataSource:(SKBasicDataSource *)dataSource;

-(void)setup;

@property (strong,nonatomic) SKBasicDataSource * basicDataSource;



@end
