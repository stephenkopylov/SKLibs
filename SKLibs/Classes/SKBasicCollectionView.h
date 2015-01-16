//
//  SKBasicCollectionView.h
//  Piquadro
//
//  Created by Stephen Kopylov on 07/11/14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SKBasicCollectionViewDataSource.h"
#import "SKBasicViewProtocol.h"

@interface SKBasicCollectionView : UICollectionView <SKBasicViewProtocol>

-(UICollectionViewFlowLayout*)getFlowLayout;

@property (readwrite) BOOL refreshEnabled;

@property (readwrite) BOOL loadingMoreEnabled;

@property (strong,nonatomic) UIRefreshControl *refreshControl;

@end
