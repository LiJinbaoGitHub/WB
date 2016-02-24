//
//  WBMessageCenterViewController.m
//  新浪微博
//
//  Created by ma c on 16/2/17.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBMessageCenterViewController.h"
#import "WBTest1ViewController.h"


@interface WBMessageCenterViewController ()

@end

@implementation WBMessageCenterViewController
- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {


    }
    return self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * ID = @"cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if(!cell){
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"test-message-%ld",indexPath.row];
    
    return cell;
}
#pragma mark - 代理方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    WBTest1ViewController * test1 = [[WBTest1ViewController alloc]init];
    test1.title = @"测试界面1";
    [self.navigationController pushViewController:test1 animated:YES];

}



//    //当test1界面 被 push 时，tabbatController的tabbar，会被隐藏
//    ///当test1界面 被 pop 时，tabbatController的tabbar，会被显示
//    test1.hidesBottomBarWhenPushed = YES;
//
@end
