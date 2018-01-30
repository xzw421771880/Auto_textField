//
//  ViewController.m
//  catTaxi
//
//  Created by mc on 2017/12/7.
//  Copyright © 2017年 mc. All rights reserved.
//

#import "ViewController.h"

#import "UIViewController+HuaZhi.h"

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    [self addTextFiled];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)addTextFiled
{
    for (int i=0; i<10; i++) {
        UITextField *textField=[[UITextField alloc]initWithFrame:CGRectMake(5, 300+i*35, 250, 30)];
        textField.backgroundColor=[UIColor grayColor];
        textField.delegate=self;
        [self.view addSubview:textField];
    }
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    NSLog(@"ddd");
    [self.view endEditing:YES];
    self.view.frame = CGRectMake(0, 0, WIDTH, HEIGHT);
}

#pragma mark - UITextViewDelegate
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    [self autoTextField:textField];//自动展现
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    self.view.frame = CGRectMake(0, 0, WIDTH, HEIGHT);
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
