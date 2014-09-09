//
//  MainViewController.m
//  EducationalCardProject
//
//  Created by 李超 on 14-9-9.
//  Copyright (c) 2014年 bill. All rights reserved.
//

#import "MainViewController.h"
#import "CardViewController.h"
#import "LearnViewController.h"
#import "ForumViewController.h"
#import "SelfViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

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
 
    self.tabBar.hidden=YES;
    
    //初始化子控制器
    [self _initViewControllers];
    //初始化底部导航栏
    [self _initTabBarView];
}

#pragma mark 初始化子控制器
- (void)_initViewControllers
{
    NSLog(@"123");
    
    //学习模块
    LearnViewController *learn=[[LearnViewController alloc] init];
    UINavigationController *navLearn=[[UINavigationController alloc] initWithRootViewController:learn];
    navLearn.navigationBarHidden=YES;
    
    //卡片模块
    CardViewController *card=[[CardViewController alloc] init];
    UINavigationController *navCard=[[UINavigationController alloc] initWithRootViewController:card];
    navCard.navigationBarHidden=YES;
    
    //讨论模块
    ForumViewController *forum=[[ForumViewController alloc] init];
    UINavigationController *navForum=[[UINavigationController alloc] initWithRootViewController:forum];
    navForum.navigationBarHidden=YES;
    
    //我的模块
    SelfViewController *selfView=[[SelfViewController alloc] init];
    UINavigationController *navSelf=[[UINavigationController alloc] initWithRootViewController:selfView];
    navSelf.navigationBarHidden=YES;
    
    self.viewControllers=[[NSMutableArray alloc] initWithObjects:navLearn,navCard,navForum,navSelf, nil];
}

- (void)_initTabBarView{
    _tabBarView=[[UIView alloc] initWithFrame:CGRectMake(0, ScreenHeight-49, 320, 49)];
    _tabBarView.userInteractionEnabled=YES;
    //_tabBarView.backgroundColor=[UIColor colorWithPatternImage:[UIImage imageNamed:@"tab-nor.png"]];
    //[_tabBarView setBackgroundColor:UIColorFromRGBWithAlpha(0x9e9e9e, 1.0f)];
    [_tabBarView setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:_tabBarView];
    
    
    //学习
    learnButton=[UIButton buttonWithType:UIButtonTypeCustom];
    learnButton.tag=0;
    learnButton.frame=CGRectMake(0, 0, 80, 49);
    [learnButton setImage:[UIImage imageNamed:@"bg-tab-job-sel.png"] forState:UIControlStateNormal];
    [learnButton addTarget:self action:@selector(selectedTab:) forControlEvents:UIControlEventTouchUpInside];
    [_tabBarView addSubview:learnButton];
    
    //卡包
    cardButton=[UIButton buttonWithType:UIButtonTypeCustom];
    cardButton.tag=1;
    cardButton.frame=CGRectMake(80, 0, 80, 49);
    [cardButton setImage:[UIImage imageNamed:@"bg-tab-found-nor.png"] forState:UIControlStateNormal];
    [cardButton addTarget:self action:@selector(selectedTab:) forControlEvents:UIControlEventTouchUpInside];
    [_tabBarView addSubview:cardButton];
    
    
    //讨论
    forumButton=[UIButton buttonWithType:UIButtonTypeCustom];
    forumButton.tag=2;
    forumButton.frame=CGRectMake(160, 0, 80, 49);
    [forumButton setImage:[UIImage imageNamed:@"bg-tab-myaoqiao-nor.png"] forState:UIControlStateNormal];
    [forumButton addTarget:self action:@selector(selectedTab:) forControlEvents:UIControlEventTouchUpInside];
    [_tabBarView addSubview:forumButton];
    //我的
    selfButton=[UIButton buttonWithType:UIButtonTypeCustom];
    selfButton.tag=3;
    selfButton.frame=CGRectMake(240, 0, 80, 49);
    [selfButton setImage:[UIImage imageNamed:@"bg-tab-setting-nor.png"] forState:UIControlStateNormal];
    [selfButton addTarget:self action:@selector(selectedTab:) forControlEvents:UIControlEventTouchUpInside];
    [_tabBarView addSubview:selfButton];

}

//点击选项卡之后背景颜色改变
-(void)selectedTab:(UIButton *)button{
    self.selectedIndex=button.tag;
    if(button.tag==0){
        [learnButton setImage:[UIImage imageNamed:@"bg-tab-job-sel.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:learnButton];
        
        [cardButton setImage:[UIImage imageNamed:@"bg-tab-found-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:cardButton];
        
        [forumButton setImage:[UIImage imageNamed:@"bg-tab-myaoqiao-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:forumButton];
        
        [selfButton setImage:[UIImage imageNamed:@"bg-tab-setting-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:selfButton];
        
    }else if(button.tag==1){
        [learnButton setImage:[UIImage imageNamed:@"bg-tab-job-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:learnButton];
        
        [cardButton setImage:[UIImage imageNamed:@"bg-tab-found-sel.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:cardButton];
        
        [forumButton setImage:[UIImage imageNamed:@"bg-tab-myaoqiao-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:forumButton];
        
        [selfButton setImage:[UIImage imageNamed:@"bg-tab-setting-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:selfButton];
        
    }else if(button.tag==2){
        
        [learnButton setImage:[UIImage imageNamed:@"bg-tab-job-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:learnButton];
        
        [cardButton setImage:[UIImage imageNamed:@"bg-tab-found-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:cardButton];
        
        [forumButton setImage:[UIImage imageNamed:@"bg-tab-myaoqiao-sel.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:forumButton];
        
        [selfButton setImage:[UIImage imageNamed:@"bg-tab-setting-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:selfButton];
        
    }else if(button.tag==3){
        [learnButton setImage:[UIImage imageNamed:@"bg-tab-job-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:learnButton];
        
        [cardButton setImage:[UIImage imageNamed:@"bg-tab-found-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:cardButton];
        
        [forumButton setImage:[UIImage imageNamed:@"bg-tab-myaoqiao-nor.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:forumButton];
        
        [selfButton setImage:[UIImage imageNamed:@"bg-tab-setting-sel.png"] forState:UIControlStateNormal];
        [_tabBarView addSubview:selfButton];
        
        
    }
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
