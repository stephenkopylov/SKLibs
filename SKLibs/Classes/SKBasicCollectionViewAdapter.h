//
//  SKBasicCollectionViewAdapter.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "SKBasicAdapter.h"
#import <UIKit/UIKit.h>
#import "SKBasicCollectionView.h"
#import "SKBasicCollectionViewDataSource.h"

@class SKBasicCollectionViewDataSource;

@interface SKBasicCollectionViewAdapter : SKBasicAdapter <UICollectionViewDelegate,UICollectionViewDataSource>

-(NSInteger)numberOfItemsInSection:(NSInteger)section;

-(UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;

- (CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

@property (strong , nonatomic) SKBasicCollectionView *view;

@property (strong,nonatomic) SKBasicCollectionViewDataSource *basicDataSource;

@end
