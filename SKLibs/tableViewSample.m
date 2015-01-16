//
//  tableViewSample.m
//  PandraLibs
//
//  Created by Admin on 03.12.14.
//  Copyright (c) 2014 Pandra. All rights reserved.
//

#import "tableViewSample.h"
#import "BasicTableView.h"
#import "tvDataSourceSample.h"
#import <Masonry.h>

@interface TableViewSample ()

@end

@implementation TableViewSample

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    BasicTableView *basicCollectionView = [[BasicTableView alloc] initWithDataSource:[[tvDataSourceSample alloc] init]];
    basicCollectionView.alwaysBounceVertical = YES;
    basicCollectionView.refreshEnabled = YES;
    [self.view addSubview:basicCollectionView];
    [basicCollectionView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(self.view);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
