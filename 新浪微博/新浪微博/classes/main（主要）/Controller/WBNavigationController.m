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
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem ItemWithTarget:self Action:@selector(backToBeforeView) image:@"navigationbar_back" heightImage:@"navigationbar_back_highlighted"];
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem ItemWithTarget:self Action:@selector(backToTopView) image:@"navigationbar_more" heightImage:@"navigationbar_more_highlighted"];

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





















