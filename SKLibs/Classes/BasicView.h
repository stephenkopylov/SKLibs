//
//  BasicView.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasicViewProtocol.h"

@interface BasicView : UIView <BasicViewProtocol>
@property (strong, nonatomic) BasicDataSource *basicDataSource;
@end
