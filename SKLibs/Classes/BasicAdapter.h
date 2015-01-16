//
//  BasicAdapter.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicDataSourceDelegate.h"
#import "BasicAdapterProtocol.h"
#import <UIKit/UIKit.h>

@class BasicDataSource;

@interface BasicAdapter : NSObject <BasicDataSourceDelegate, BasicAdapterProtocol>
@property (strong , nonatomic) UIView *view;
@end
