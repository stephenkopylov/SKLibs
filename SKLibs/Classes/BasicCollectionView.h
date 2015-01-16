//
//  BasicCollectionView.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "BasicCollectionViewDataSource.h"
#import "BasicViewProtocol.h"

@interface BasicCollectionView : UICollectionView <BasicViewProtocol>

-(UICollectionViewFlowLayout*)getFlowLayout;

@property (readwrite) BOOL refreshEnabled;

@property (readwrite) BOOL loadingMoreEnabled;

@property (strong,nonatomic) UIRefreshControl *refreshControl;

@end
