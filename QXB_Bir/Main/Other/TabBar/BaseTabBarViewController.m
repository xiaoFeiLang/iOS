//
//  BaseTabBarViewController.m
//  QXB_Bir
//
//  Created by ChenWei on 16/7/6.
//  Copyright © 2016年 QXB. All rights reserved.
//

#import "BaseTabBarViewController.h"
#import "HomeVC.h"
@interface BaseTabBarViewController ()

@end

@implementation BaseTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setUpAllChildVC];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setUpAllChildVC{

    HomeVC *vc = [[HomeVC alloc] init];
    [self setUpOneChildViewController:vc image:[UIImage imageNamed:@"icon_tabbar_homepage"] title:@"首页"];
    
    UIViewController *vc2 = [[UIViewController alloc] init];
    [self setUpOneChildViewController:vc2 image:[UIImage imageNamed:@"icon_tabbar_homepage"] title:@"我的2"];
    
    UIViewController *vc3 = [[UIViewController alloc] init];
    [self setUpOneChildViewController:vc3 image:[UIImage imageNamed:@"icon_tabbar_homepage"] title:@"我的3"];

}

- (void)setUpOneChildViewController:(UIViewController *)viewController image:(UIImage *)image title:(NSString *)title{
    
    UINavigationController *navC = [[UINavigationController alloc]initWithRootViewController:viewController];
    
    navC.title = title;
    
    navC.tabBarItem.image = image;
    
    [navC.navigationBar setBackgroundImage:[UIImage imageNamed:@"commentary_num_bg"] forBarMetrics:UIBarMetricsDefault];
    
    viewController.navigationItem.title = title;
    
    [self addChildViewController:navC];
    
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
