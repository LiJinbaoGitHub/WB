//
//  WBTest2ViewController.m
//  新浪微博
//
//  Created by ma c on 16/2/24.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBTest2ViewController.h"
#import "WBTest3ViewController.h"

@interface WBTest2ViewController ()

@end

@implementation WBTest2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    WBTest3ViewController * test3 = [[WBTest3ViewController alloc]init];
    test3.title =@"测试界面3";
    [self.navigationController pushViewController:test3 animated:YES];
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
