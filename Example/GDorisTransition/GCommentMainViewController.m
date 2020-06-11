//
//  GCommentMainViewController.m
//  GDorisTransition_Example
//
//  Created by GIKI on 2020/6/11.
//  Copyright © 2020 810373457@qq.com. All rights reserved.
//

#import "GCommentMainViewController.h"
#import "Masonry.h"
#import "GCommentModalViewController.h"
#import "GDorisSwipeGestureTransition.h"
@interface GCommentMainViewController ()

@end

@implementation GCommentMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = [UIFont systemFontOfSize:16];
    [button setTitleColor:UIColor.blackColor forState:UIControlStateNormal];
    [button setTitle:@"点我查看评论" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.size.mas_equalTo(CGSizeMake(120, 50));
        make.center.equalTo(self.view);
    }];
}

- (void)buttonClick:(UIButton*)sender
{
    [self noneNav];
}

- (void)noneNav
{
    GCommentModalViewController * modal = [GCommentModalViewController new];
    modal.modalPresentationStyle = UIModalPresentationCustom;
    GDorisSwipeGestureTransition * swipeTransition = [GDorisSwipeGestureTransition swipeGestureTransitionWithTarget:modal];
    swipeTransition.needsTopMask = YES;
    swipeTransition.containerOffset = 124;
    modal.transitioningDelegate = swipeTransition;
    modal.modalPresentationStyle = UIModalPresentationCustom;
    modal.modalPresentationCapturesStatusBarAppearance = YES;
    [self presentViewController:modal animated:YES completion:nil];
}

- (void)sysNavcontroller
{
    GCommentModalViewController * modal = [GCommentModalViewController new];
    modal.modalPresentationStyle = UIModalPresentationCustom;
    UINavigationController *  nav = [[UINavigationController alloc] initWithRootViewController:modal];
    nav.modalPresentationStyle = UIModalPresentationCustom;
    GDorisSwipeGestureTransition * swipeTransition = [GDorisSwipeGestureTransition swipeGestureTransitionWithTarget:nav];
    swipeTransition.needsTopMask = YES;
    swipeTransition.containerOffset = 124;
    nav.transitioningDelegate = swipeTransition;
    nav.modalPresentationStyle = UIModalPresentationCustom;
    nav.modalPresentationCapturesStatusBarAppearance = YES;
    [self presentViewController:nav animated:YES completion:nil];
}
@end
