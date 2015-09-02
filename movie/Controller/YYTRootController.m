//
//  YYTRootController.m
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYTRootController.h"
#import "ViewController.h"
@implementation YYTRootController


@synthesize top ;
@synthesize recent ;
@synthesize search ;
@synthesize feature ;
@synthesize bookmark ;


- (instancetype)init
{
    self = [super init];
    if (self) {
        ViewController *view1 = [[ViewController alloc] init] ;
        UINavigationController *root1 = [[UINavigationController alloc] initWithRootViewController:view1] ;
        [[root1 navigationBar] setBarTintColor:[UIColor redColor]] ;
        UITabBarItem *view1Item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemTopRated tag:1] ;
        root1.tabBarItem = view1Item ;
        
        ViewController *view2 = [[ViewController alloc] init] ;
        UINavigationController *root2 = [[UINavigationController alloc] initWithRootViewController:view2] ;
        UITabBarItem *view2Item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemSearch tag:2] ;
        root2.tabBarItem = view2Item ;
        
        ViewController *view3 = [[ViewController alloc] init] ;
        UINavigationController *root3 = [[UINavigationController alloc] initWithRootViewController:view3] ;
        UITabBarItem *view3Item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemRecents tag:3] ;
        root3.tabBarItem = view3Item ;
        
        ViewController *view4 = [[ViewController alloc] init] ;
        UINavigationController *root4 = [[UINavigationController alloc] initWithRootViewController:view4] ;
        UITabBarItem *view4Item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemBookmarks tag:4] ;
        root4.tabBarItem = view4Item ;
        
        ViewController *view5 = [[ViewController alloc] init] ;
        UINavigationController *root5 = [[UINavigationController alloc] initWithRootViewController:view5] ;
        UITabBarItem *view5Item = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemFeatured tag:5] ;
        root5.tabBarItem = view5Item ;
        
        [self setViewControllers:@[root1,root2,root3,root4,root5] animated:YES] ;
        [[self tabBar] setBarTintColor:[UIColor redColor]] ;
        
    }
    return self;
}




@end
