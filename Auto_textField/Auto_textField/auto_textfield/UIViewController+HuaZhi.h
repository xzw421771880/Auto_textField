//
//  UIViewController+HuaZhi.h
//  furongPassenger
//
//  Created by mc on 2017/12/2.
//  Copyright © 2017年 Baidu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (HuaZhi)

#define WIDTH  [UIScreen mainScreen].bounds.size.width
#define HEIGHT  [UIScreen mainScreen].bounds.size.height
//控件大小
#define Frame(x,y,w,h)   CGRectMake(x, y, w, h)
#pragma mark - 输入框自动排列
-(void)autoTextField:(UITextField *)textField;

@end
