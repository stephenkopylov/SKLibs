//
//  BasicTableView.h
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BasicViewProtocol.h"

@interface BasicTableView : UITableView<BasicViewProtocol>

@property (readwrite) BOOL refreshEnabled;

@property (readwrite) BOOL loadingMoreEnabled;

@property (strong,nonatomic) UIRefreshControl *refreshControl;

@end
