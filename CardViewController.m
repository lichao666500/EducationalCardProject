//
//  CardViewController.m
//  EducationalCardProject
//
//  Created by 李超 on 14-9-9.
//  Copyright (c) 2014年 bill. All rights reserved.
//

#import "CardViewController.h"

@interface CardViewController ()

@end

@implementation CardViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    UINavigationBar *navigationBar = [[UINavigationBar alloc] initWithFrame:CGRectMake(0, 0, 320, 64)];
    
    //navigationBar.barTintColor=[UIColor colorWithRed:5/255. green:193/255.0 blue:241/255.0 alpha:1.0];
    navigationBar.barTintColor=UIColorFromRGBWithAlpha(0xfbfbfb, 1.0);
    
    //[_tabBarView setBackgroundColor:UIColorFromRGBWithAlpha(0x9e9e9e, 1.0f)];
    
    UINavigationItem *navigationItem = [[UINavigationItem alloc] initWithTitle:nil];
    [navigationItem setTitle:@"卡 包"];
    navigationBar.titleTextAttributes=@{
                                        UITextAttributeTextColor : UIColorFromRGBWithAlpha(0xff4c22,1.0f),UITextAttributeFont:[UIFont boldSystemFontOfSize:22.0f]
                                        };
    //把导航栏集合添加入导航栏中，设置动画关闭
    [navigationBar pushNavigationItem:navigationItem animated:NO];
    [self.view addSubview:navigationBar];

    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
