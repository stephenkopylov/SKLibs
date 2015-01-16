//
//  SKBasicView.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SKBasicViewProtocol.h"

@interface SKBasicView : UIView <SKBasicViewProtocol>
@property (strong, nonatomic) SKBasicDataSource *basicDataSource;
@end
