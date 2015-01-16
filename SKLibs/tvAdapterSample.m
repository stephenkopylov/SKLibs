//
//  tvAdapterSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "tvAdapterSample.h"

@implementation tvAdapterSample
-(void)registerView:(id)view{
    [super registerView:view];
    [self.view registerClass:[UITableViewCell class] forCellReuseIdentifier:@"sampleCell"];
}

-(NSInteger)numberOfItemsInSection:(NSInteger)section{
    return self.basicDataSource.data.count;
}

-(UITableViewCell *)cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [self.view dequeueReusableCellWithIdentifier:@"sampleCell" forIndexPath:indexPath];
    cell.textLabel.text = (NSString*)self.basicDataSource.data[indexPath.row];
    return cell;
}

-(float)heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return  50;
}

-(void)dataChanged:(NSMutableArray *)newData{
    [super dataChanged:newData];
    [self.view reloadData];
}
@end
