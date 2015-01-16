//
//  viewAdapterSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "viewAdapterSample.h"
#import "User.h"

@implementation viewAdapterSample

-(void)setup{
    [self.view.sampleButton addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
}

-(void)buttonClick{
    NSLog(@"buttonClicked");
    [self.basicDataSource regenerateData];
}

-(void)dataChanged:(id)newData{
    self.view.sampleLabel.text =  self.basicDataSource.data.username;
}

@end
