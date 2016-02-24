//
//  UIBarButtonItem+Extension.m
//  新浪微博
//
//  Created by ma c on 16/2/24.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+ (UIBarButtonItem *)ItemWithTarget:(id)target Action:(SEL)action image:(NSString *)image heightImage:(NSString *)heightImage{
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:heightImage] forState:UIControlStateHighlighted];
    btn.size = btn.currentBackgroundImage.size;
    btn.size = btn.currentBackgroundImage.size;
    
    [btn addTarget:target  action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc]initWithCustomView:btn];
    
}

@end
