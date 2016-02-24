//
//  WBTabbarController.m
//  新浪微博
//
//  Created by ma c on 16/2/17.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBTabbarController.h"
#import "WBHomeViewController.h"
#import "WBMessageCenterViewController.h"
#import "WBDiscoverViewController.h"
#import "WBProfileViewController.h"
#import "WBNavigationController.h"

@interface WBTabbarController ()

@end

@implementation WBTabbarController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    //初始化 子控制器
    WBHomeViewController * home = [[WBHomeViewController alloc]init];
    WBMessageCenterViewController * messageCenter = [WBMessageCenterViewController new];
    WBDiscoverViewController * discover = [WBDiscoverViewController new];
    WBProfileViewController * profile = [WBProfileViewController new];
    

    
    [self addChildVC:home Title:@"首页" imageName:@"tabbar_home" selectImageName:@"tabbar_home_selected"];
    
    [self addChildVC:messageCenter  Title:@"消息" imageName:@"tabbar_message_center" selectImageName:@"tabbar_message_center_selected"];
    
    [self addChildVC:discover  Title:@"发现" imageName:@"tabbar_discover" selectImageName:@"tabbar_discover_selected"];
    
    [self addChildVC:profile  Title:@"我" imageName:@"tabbar_profile" selectImageName:@"tabbar_profile_selected"];
 
}

- (void)addChildVC:(UIViewController *)childVC Title:(NSString *)title imageName:(NSString *)imageName selectImageName:(NSString *) selectImageName{
    
    //设置子控制器的文字
    
    // childVC.tabBarItem.title = title; // 设置tabbat 的文字
    // childVC.navigationItem.title = title; // 设置 导航栏的 文字
    childVC.title = title; //同时设置tabbat 导航栏的文字
    
    //设置自控制器图片
    childVC.view.backgroundColor = WBRandomColor;
    childVC.tabBarItem.image = [UIImage imageNamed:imageName];
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];//这张图片 按照原始图片 显示（不自动渲染 成 其他颜色）
    
    //设置文字样式
    NSMutableDictionary * textAttrs = [NSMutableDictionary dictionary];
    NSMutableDictionary * selectedAttrsSelected = [NSMutableDictionary dictionary];
    
    textAttrs[NSForegroundColorAttributeName] = WBColor(123, 123, 123);
    selectedAttrsSelected[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVC .tabBarItem setTitleTextAttributes:selectedAttrsSelected forState:UIControlStateSelected];
    
    //先给外面传进来的控制器 包装成  一个导航控制器
    WBNavigationController * nav = [[WBNavigationController alloc]initWithRootViewController:childVC];
    
    //添加为子控制器
    [self addChildViewController:nav];
}

@end
