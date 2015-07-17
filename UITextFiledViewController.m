//
//  UITextFiledViewController.m
//  UIWindow
//
//  Created by lixy on 15/7/13.
//  Copyright (c) 2015年 lixy. All rights reserved.
//

#import "UITextFiledViewController.h"

@interface UITextFiledViewController ()<UITextFieldDelegate>

@end

@implementation UITextFiledViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"UITextField详解";
    self.view.backgroundColor = [UIColor whiteColor];
   
    //UITextField 输入框
    //UITextField继承UIControl
    //初始化的作用是为了初始化属性
    UITextField* textField = [[UITextField alloc] init];
    textField.delegate = self;
    textField.frame = CGRectMake(50, 100, 220, 150);
    //设置字体大小
    textField.font = [UIFont systemFontOfSize:20];
    //设置label的对齐方式 Alignment对齐
    textField.textAlignment = NSTextAlignmentCenter;
    //输入框的占位字符串
    textField.placeholder = @"请输入...";
    //设置边框风格 圆角
    textField.borderStyle = UITextBorderStyleRoundedRect;
    //设置背景颜色 backgroundColor继承自UIView
    textField.backgroundColor = [UIColor yellowColor];
    //输入框中是否有个叉号，在什么时候显示，用于一次性删除输入框中的内容
    textField.clearButtonMode = UITextFieldViewModeAlways;
    //每输入一个字符就变成点 用语密码输入
    textField.secureTextEntry = NO;
    //设置键盘类型
    textField.keyboardType = UIKeyboardTypeDefault;
    //设置键盘按钮
    textField.returnKeyType = UIReturnKeyDone;
    //添加
    [self.view addSubview:textField];
    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    
    return YES;//是否允许UITextField可编辑
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    //开始编辑时触发，文本字段将成为first responder
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    //返回BOOL值，指定是否允许文本字段结束编辑, 当编辑结束，文本字段会让出first responder
    return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //文本编辑结束的时候调用的；
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    //当用户使用自动更正功能，把输入的文字修改为推荐的文字时，就会调用这个方法。
    //这对于想要加入撤销选项的应用程序特别有用
    //可以跟踪字段内所做的最后一次修改，也可以对所有编辑做日志记录,用作审计用途。
    //要防止文字被改变可以返回NO
    //这个方法的参数中有一个NSRange对象，指明了被改变文字的位置，建议修改的文本也在其中
    NSLog(@"string---------->%@",string);
    return YES;
}
- (BOOL)textFieldShouldClear:(UITextField *)textField
{
    //返回一个BOOL值指明是否允许根据用户请求清除内容,限制一次性删除按钮的触发；
    //可以设置在特定条件下才允许清除内容
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
  //返回一个BOOL值，指明是否允许在按下回车键时结束编辑
  [textField resignFirstResponder];
    return YES;
}


@end
