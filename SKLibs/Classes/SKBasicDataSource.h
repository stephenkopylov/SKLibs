//
//  SKBasicDataSource.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKBasicAdapter.h"
#import "SKBasicDataSourceProtocol.h"

@interface SKBasicDataSource : NSObject<SKBasicDataSourceProtocol>
@property (readwrite) BOOL loading;
@end
