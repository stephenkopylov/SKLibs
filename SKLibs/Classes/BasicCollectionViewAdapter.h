//
//  BasicCollectionViewAdapter.h
//  PandraLibs
//
//  Created by Admin on 02.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "BasicAdapter.h"
#import <UIKit/UIKit.h>
#import "BasicCollectionView.h"
#import "BasicCollectionViewDataSource.h"

@class BasicCollectionViewDataSource;

@interface BasicCollectionViewAdapter : BasicAdapter<UICollectionViewDelegate,UICollectionViewDataSource>

-(NSInteger)numberOfItemsInSection:(NSInteger)section;

-(UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath;

- (CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath;

@property (strong , nonatomic) BasicCollectionView *view;

@property (strong,nonatomic) BasicCollectionViewDataSource *basicDataSource;

@end
