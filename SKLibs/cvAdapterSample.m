//
//  cvAdapterSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "cvAdapterSample.h"
#import "cvCellSample.h"

@implementation cvAdapterSample

-(void)registerView:(id)view{
    [super registerView:view];
    [self.view registerClass:[cvCellSample class] forCellWithReuseIdentifier:@"sampleCell"];
}

-(NSInteger)numberOfItemsInSection:(NSInteger)section{
    return self.basicDataSource.data.count;
}
-(UICollectionViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    cvCellSample *cell = [self.view dequeueReusableCellWithReuseIdentifier:@"sampleCell" forIndexPath:indexPath];
    cell.backgroundColor = [UIColor blackColor];
    return cell;
}
-(CGSize)sizeForItemAtIndexPath:(NSIndexPath *)indexPath{
    return  CGSizeMake(50, 50);
}
-(void)dataChanged:(NSMutableArray *)newData{
    [super dataChanged:newData];
    [self.view reloadData];
}

@end
