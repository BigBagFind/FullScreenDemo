//
//  FirstViewController.m
//  FullScreenDemo
//
//  Created by 吴玉铁 on 15/11/6.
//  Copyright © 2015年 铁哥. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "UINavigationController+FDFullscreenPopGesture.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一个";
    self.view.backgroundColor = [UIColor purpleColor];
    //self.navigationController.navigationBar.translucent = NO;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    [self.view addSubview:button];
    button.frame = CGRectMake(100, 150, 200, 80);
    [button setTitle:@"Push" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:25];
    [button addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
   // self.navigationController.fd_prefersNavigationBarHidden = YES;
    
}


//- (void)viewWillAppear:(BOOL)animated {
//    [super viewWillAppear:animated];
//    [self.navigationController setNavigationBarHidden:YES  animated:animated];
//}

- (BOOL)fd_prefersNavigationBarHidden {
    return YES;
}

- (void)click{
    
    SecondViewController *secondVc = [[SecondViewController alloc]init];
    [self.navigationController pushViewController:secondVc animated:YES];
}


@end
