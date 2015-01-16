//
//  SKBasicDataSourceDelegate.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
@class SKBasicDataSource;
@protocol SKBasicDataSourceDelegate <NSObject>
-(void)dataChanged:(id)newData;
@end
