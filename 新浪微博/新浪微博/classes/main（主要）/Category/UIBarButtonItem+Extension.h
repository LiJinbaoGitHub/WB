//
//  UIBarButtonItem+Extension.h
//  新浪微博
//
//  Created by ma c on 16/2/24.
//  Copyright © 2016年 北京尚学堂. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)
+ (UIBarButtonItem *)ItemWithTarget:(id)target Action:(SEL)action image:(NSString *)image heightImage:(NSString *)heightImage;

@end
