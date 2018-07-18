//
//  DemoListViewController.m
//  FDTemplateDemo
//
//  Created by qiwen on 2018/7/2.
//  Copyright © 2018年 qiwen. All rights reserved.
//

#import "DemoListViewController.h"
#import "DemoListCell.h"
#import "DemoListModel.h"

#import "SecondDemoCell.h"
#import "DemoSubViewCell.h"
#import "DemoSubViewModel.h"

#import <UITableView+FDTemplateLayoutCell/UITableView+FDTemplateLayoutCell.h>

@interface DemoListViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    BOOL cellDidRegisted;
}
@property (nonatomic, strong) NSArray *dataListArr;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation DemoListViewController

#pragma mark - View生命周期

- (void)viewDidLoad {
    [super viewDidLoad];
    //
    [self setupDefaultData];
    //
    [self setupNotifications];
    //
    [self requestNetWork];
    //
    [self setupMJRefresh];
    
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
- (void)dealloc {
    
}

#pragma mark - 设置默认初始数据
- (void)setupDefaultData {
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tableView];
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
       
        self.dataListArr = [DemoListModel metaData];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            
            [self.tableView reloadData];
        });
    });
}

#pragma mark - 通知
- (void)setupNotifications {
    
}

#pragma mark - 网络请求
- (void)requestNetWork {
    
}

#pragma mark - 设置下拉刷新&上拉加载
- (void)setupMJRefresh {
    
}

#pragma mark - UITableViewDatasource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 5;
    } else if (section == 1) {
        return self.dataListArr.count;
    } else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        SecondDemoCell *secondCell = [tableView dequeueReusableCellWithIdentifier:secondCellID forIndexPath:indexPath];
        [secondCell bindCellWithDataModel];
        return secondCell;
    } else if (indexPath.section == 1) {
        DemoListCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
        cell.fd_enforceFrameLayout = NO;
        DemoListModel *dataModel = [self.dataListArr objectAtIndex:indexPath.row];
        [cell bindCellWithDataModel:dataModel];
        return cell;
    } else {
        DemoSubViewCell *cell = [tableView dequeueReusableCellWithIdentifier:demoSubViewCellId forIndexPath:indexPath];
        cell.fd_enforceFrameLayout = NO;
        DemoSubViewModel *dataModel = [[DemoSubViewModel metaData] objectAtIndex:indexPath.row];
        [cell bindCellWithDataModel:dataModel];
        return cell;
    }
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    

}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return [tableView fd_heightForCellWithIdentifier:secondCellID configuration:^(SecondDemoCell * cell) {
            [cell bindCellWithDataModel];
        }];
    } else if (indexPath.section == 1) {
        return [tableView fd_heightForCellWithIdentifier:cellID configuration:^(DemoListCell *cell) {
            DemoListModel *dataModel = [self.dataListArr objectAtIndex:indexPath.row];
            [cell bindCellWithDataModel:dataModel];
        }];
    } else {
        return [tableView fd_heightForCellWithIdentifier:demoSubViewCellId configuration:^(DemoSubViewCell *cell) {
            DemoSubViewModel *dataModel = [[DemoSubViewModel metaData] objectAtIndex:indexPath.row];
            [cell bindCellWithDataModel:dataModel];
        }];
    }

}



#pragma mark - getter
static NSString *cellID = @"demoListCell";
static NSString *secondCellID = @"secondCellID";
static NSString *demoSubViewCellId = @"DemoSubViewCellID";
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        [_tableView registerClass:[DemoListCell class] forCellReuseIdentifier:cellID];
        [_tableView registerClass:[SecondDemoCell class] forCellReuseIdentifier:secondCellID];
        [_tableView registerClass:[DemoSubViewCell class] forCellReuseIdentifier:demoSubViewCellId];
    }
    return _tableView;
}








@end
