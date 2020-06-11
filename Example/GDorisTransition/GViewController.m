//
//  GViewController.m
//  GDorisTransition
//
//  Created by 810373457@qq.com on 06/11/2020.
//  Copyright (c) 2020 810373457@qq.com. All rights reserved.
//

#import "GViewController.h"
@interface GViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) UITableView * tableView;
@property (nonatomic, strong) NSArray * datas;
@end

@implementation GViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"GDorisTransition";
    
    [self.view addSubview:({
        UITableView *tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.estimatedRowHeight = 0;
        tableView.estimatedSectionFooterHeight = 0;
        tableView.estimatedSectionHeaderHeight = 0;
        _tableView = tableView;
        tableView;
    })];
    
    [self loadDatas];
}

- (void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    self.tableView.frame = self.view.bounds;
}

- (void)loadDatas
{
    self.datas = @[@"头条评论转场"];
}

#pragma mark -- TableView DataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1    ;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.datas.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"tableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"tableViewCell"];
    }
    cell.textLabel.text = [self.datas objectAtIndex:indexPath.row];;
    cell.textLabel.textColor = [UIColor blackColor];
    return cell;
}

#pragma mark -- TableView Delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70;
}

//- (void)openPhotoPicker
//{
//
//    GDorisPhotoPickerController * picker = [[GDorisPhotoPickerController alloc] init];
//    UINavigationController *  nav = [[UINavigationController alloc] initWithRootViewController:picker];
//    nav.modalPresentationStyle = UIModalPresentationCustom;
//    GDorisSwipeGestureTransition * swipeTransition = [GDorisSwipeGestureTransition swipeGestureTransitionWithTarget:picker];
//    swipeTransition.needsTopMask = YES;
//    swipeTransition.containerOffset = 44;
//    nav.transitioningDelegate = swipeTransition;
//    nav.modalPresentationStyle = UIModalPresentationCustom;
//    nav.modalPresentationCapturesStatusBarAppearance = YES;
//    [self presentViewController:nav animated:YES completion:nil];
//}
@end
