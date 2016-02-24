//
//  WBNavigationController.m
//  新浪微博
//
//  Created by ma c on 16/2/24.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBNavigationController.h"

@interface WBNavigationController ()

@end

@implementation WBNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    

    //判断push进来的第一个控制器的个数，是不是>0 (刚进来 为0 ，条件不成立)
    if(self.viewControllers.count > 0){
        
        /* 自动显示和隐藏tabbar */
        viewController.hidesBottomBarWhenPushed = YES;
        
        /* 创建导航栏*/
        
        //创建按钮
        UIButton * backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton * moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //设置图片
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back"] forState:UIControlStateNormal];
        [backBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_back_highlighted"] forState:UIControlStateHighlighted];
        
        [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_more"] forState:UIControlStateNormal];
        [moreBtn setBackgroundImage:[UIImage imageNamed:@"navigationbar_more_highlighted"] forState:UIControlStateHighlighted];
        
        //设置尺寸
        backBtn.size = backBtn.currentBackgroundImage.size;
        moreBtn.size = moreBtn.currentBackgroundImage.size;
        
        //back 监听事件
        [backBtn addTarget:self action:@selector(backToBeforeView) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(backToTopView) forControlEvents:UIControlEventTouchUpInside];
        
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:backBtn];
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:moreBtn];

    }
    [super pushViewController:viewController animated:YES];
}
///
- (void)backToBeforeView{
    [self popViewControllerAnimated:YES];
}
- (void)backToTopView{
    [self popToRootViewControllerAnimated:YES];
}


@end





















