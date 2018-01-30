//
//  UIViewController+HuaZhi.m
//  furongPassenger
//
//  Created by mc on 2017/12/2.
//  Copyright © 2017年 Baidu. All rights reserved.
//

#import "UIViewController+HuaZhi.h"



#import "AppDelegate.h"



@implementation UIViewController (HuaZhi)



#pragma mark - 输入框自动排列
-(void)autoTextField:(UITextField *)textField
{

    //初始值
    CGFloat height=textField.frame.size.height;
    CGFloat orgin_y=textField.frame.origin.y;
    
    UIView *view=textField;
    
    //更新orgin_y
    while (view.superview!=self.view) {
        view=view.superview;//获取s
        orgin_y +=view.frame.origin.y;
    }
   
    
    //如果遮盖住输入框改变frame
    if(height+orgin_y>HEIGHT-260) {//260是键盘覆盖高度
        
        //动画适应键盘
        [UIView animateWithDuration:0.3 animations:^{
             self.view.frame=Frame(0, HEIGHT-260-height-orgin_y, WIDTH, 260+height+orgin_y);
        }];
    }
}








@end
