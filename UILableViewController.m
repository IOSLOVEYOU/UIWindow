//
//  UILableViewController.m
//  UIWindow
//
//  Created by lixy on 15/7/13.
//  Copyright (c) 2015年 lixy. All rights reserved.
//

#import "UILableViewController.h"

@interface UILableViewController ()

@end

@implementation UILableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"UILable详解";
    self.view.backgroundColor = [UIColor whiteColor];
    /*
     * UILable是IOS开发界面最基本的控件，主要用来显示文本信息
     *
     */
    //UILabel 标签控件 显示文字
    //UILabel继承于UIView
    UILabel *label = [[UILabel alloc] init];
    //frame坐标系 CGRect结构体 rect矩形
    label.frame = CGRectMake(50, 100, 220, 100);
    //设置label的字体大小
    label.font = [UIFont systemFontOfSize:20];
    //设置label的对齐方式 Alignment对齐
    label.textAlignment = NSTextAlignmentCenter;
    //设置label的文字
    //字符串格式化 拼接 参数内容和NSLog的参数内容类似
    int a = 10;
    NSString *str = @"找钢";
    NSString *str1 = @"欢迎你";
    label.text = [NSString stringWithFormat:@"%d%@%@", a, str,str1];
    
//    label.text = @"春野里到处散发着被那雪水沤烂了的枯草败叶的霉味,融混着麦苗、树木、野草发出来的清香.天空是沉碧的,太阳像海绵一样温软；风吹在人们身上使人着了魔一样地快活.人们迷醉了一样快要溶解在这种光景里了.河边的柳枝吐了嫩芽,芦笋也钻出来放叶透青了,河道里平静的水,从冬天的素净中苏醒过来,被大自然的色彩打扮得青青翠翠.山下一片杏花如云.山谷里溪流旋转,奔腾跳跃,丁冬作响,银雾飞溅.到处都是生机,就连背阴处的薄冰下面,也流着水,也游着密密麻麻的小鱼.";// 测试多文本时UILable的自动换行功能；
    //设置label的文字颜色
    label.textColor = [UIColor whiteColor];
    label.numberOfLines = 0;
    //设置label的背景颜色
    label.backgroundColor = [UIColor redColor];
    //把label显示在界面上 subview子视图
    [self.view addSubview:label];

}

@end
