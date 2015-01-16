//
//  BasicDataSource.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BasicAdapter.h"
#import "BasicDataSourceProtocol.h"

@interface BasicDataSource : NSObject<BasicDataSourceProtocol>
@property (readwrite) BOOL loading;
@end
