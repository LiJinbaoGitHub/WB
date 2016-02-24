//
//  WBTest1ViewController.m
//  新浪微博
//
//  Created by ma c on 16/2/17.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBTest1ViewController.h"
#import "WBTest2ViewController.h"

@interface WBTest1ViewController ()

@end

@implementation WBTest1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //覆盖 自定义导航控制器方法 重新自定义 导航控制器定义
    self.navigationItem.rightBarButtonItem = nil;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    WBTest2ViewController * test2 = [[WBTest2ViewController alloc]init];
    test2.title = @"测试界面2";
    [self.navigationController pushViewController:test2 animated:YES];
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
