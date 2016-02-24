 //
//  WBHomeViewController.m
//  新浪微博
//
//  Created by ma c on 16/2/17.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "WBHomeViewController.h"


@interface WBHomeViewController()

@end

@implementation WBHomeViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    //设置导航栏 上面的内容
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem ItemWithTarget:self Action:@selector(friendsearch) image:@"navigationbar_friendsearch" heightImage:@"navigationbar_friendsearch_highlighted"];
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem ItemWithTarget:self Action:@selector(pop) image:@"navigationbar_pop" heightImage:@"navigationbar_pop_highlighted"];
    

}
- (void)friendsearch{
    
}
- (void)pop{
    
}

@end
