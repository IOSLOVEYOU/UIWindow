//
//  MainViewController.m
//  UIWindow
//
//  Created by lixy on 15/7/13.
//  Copyright (c) 2015年 lixy. All rights reserved.
//

#import "MainViewController.h"
#import "UILableViewController.h"
#import "UITextFiledViewController.h"
#import "UITableViewViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"主界面";
    /*  注意点：
     *  1，UIButton 创建的时候一般是加号方法创建；
     *  2，添加的方法一定要记得实现，否则会奔溃；
     *  3，创建的方式分为两种：常规的 initWithFrame，类方法 也可以说是静态方法 buttonWithType
     */
   
    UIButton * labBtn =[UIButton buttonWithType:UIButtonTypeCustom];//初始化
    labBtn.frame = CGRectMake(80, 100, 170, 80);//设置frame
    labBtn.backgroundColor = [UIColor redColor];//设置背景色
    [labBtn setTitle:@"进入UILable界面" forState:UIControlStateNormal];//设置title
    [labBtn addTarget:self action:@selector(labBtnClick:) forControlEvents:UIControlEventTouchUpInside];//设置响应按钮
     [self.view addSubview:labBtn];//最后添加到父视图上
    
    UIButton * tfBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    tfBtn.frame = CGRectMake(80, 200, 170, 80);
    tfBtn.backgroundColor = [UIColor purpleColor];
    [tfBtn setTitle:@"进入UITextFiled界面" forState:UIControlStateNormal];
    [tfBtn addTarget:self action:@selector(tfBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tfBtn];
    
    UIButton * tableViewBtn =[UIButton buttonWithType:UIButtonTypeCustom];
    tableViewBtn.frame = CGRectMake(80, 300, 170, 80);
    tableViewBtn.backgroundColor = [UIColor greenColor];
    [tableViewBtn setTitle:@"进入UITableView界面" forState:UIControlStateNormal];
    [tableViewBtn addTarget:self action:@selector(tableViewBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:tableViewBtn];
}

#pragma mark - Action
- (void)labBtnClick:(UIButton*)btn
{
    UILableViewController * labVC =[[UILableViewController alloc] init];
    [self.navigationController pushViewController:labVC animated:YES];

}

-(void)tfBtnClick:(UIButton*)btn
{
    UITextFiledViewController * tfVC =[[UITextFiledViewController alloc] init];
    [self.navigationController pushViewController:tfVC animated:YES];

}
-(void)tableViewBtnClick:(UIButton*)btn
{
    UITableViewViewController * tableVC =[[UITableViewViewController alloc] init];
    [self.navigationController pushViewController:tableVC animated:YES];
    
}


@end
