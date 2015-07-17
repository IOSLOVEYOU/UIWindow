//
//  UITableViewViewController.m
//  UIWindow
//
//  Created by lixy on 15/7/13.
//  Copyright (c) 2015年 lixy. All rights reserved.
//

#import "UITableViewViewController.h"

@interface UITableViewViewController () <UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong)UITableView * tableView;
@end

@implementation UITableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"UITableView详解";
    self.view.backgroundColor = [UIColor whiteColor];
    
    //tableView分两种样式,Plain样式，区头不随着区一起滑动，直到整个区滑动出tableView后才消失。Grouped样式，区头随着区一起滑动。
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) style:UITableViewStylePlain];
    //设置tableView的代理。
    _tableView.delegate = self;
    //设置tableView的数据源，通过数据源协议方法，可以设置tableView显示的内容。
    _tableView.dataSource = self;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0)
    {
        _tableView.separatorInset = UIEdgeInsetsMake(0,10, 0, 10);
    }
    //添加
    [self.view addSubview:_tableView];
    
}

#pragma mark -UITableViewDataSource
//返回tableView某个区的行数。
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
     return 5*(section+1);
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static  NSString * cellIdentifier = @"Cell";
    
    UITableViewCell * cell = (UITableViewCell*)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell==nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier  ];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"第%ld区第%ld行------->%@",(long)indexPath.section,(long)indexPath.row,@"找钢"];
    return cell;
}

#pragma mark -UITableViewDelegate
//返回某个区的区头高度。
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return 80;
}

//返回某一行的行高。
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    /*
    if (indexPath.row == 0) {
            return 50;
        }else if (indexPath.row == 1){
            return 60;
        }else{
            return 70;
        }
     */
    return indexPath.section == 0?50:indexPath.section == 1?60:70;
}

//返回区头标题
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return [NSString stringWithFormat:@"第%lu区",section];
}
//*协议方法第一个参数总是调用者本身，目的是为了如果代理多个同类对象的方法，区分到底时哪个对象调用的。
//返回tableView的区数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}

@end
