//
//  SKBasicAdapter.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKBasicDataSourceDelegate.h"
#import "SKBasicAdapterProtocol.h"
#import <UIKit/UIKit.h>

@class SKBasicDataSource;

@interface SKBasicAdapter : NSObject <SKBasicDataSourceDelegate, SKBasicAdapterProtocol>
@property (strong , nonatomic) UIView *view;
@end
