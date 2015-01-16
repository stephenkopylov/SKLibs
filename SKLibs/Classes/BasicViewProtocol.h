//
//  BasicDataSourceDelegate.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BasicDataSource;

@protocol BasicViewProtocol <NSObject>

-(instancetype) initWithDataSource:(BasicDataSource*)dataSource;

-(void)setup;

@property (strong,nonatomic) BasicDataSource* basicDataSource;



@end
