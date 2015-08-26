//
//  AppDelegate.m
//  movie
//
//  Created by 杨洋 on 15/8/25.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds] ;
    self.window.backgroundColor = [UIColor whiteColor] ;
    
    ViewController *view = [[ViewController alloc] init] ;
    UINavigationController *root = [[UINavigationController alloc] initWithRootViewController:view] ;
    
    self.window.rootViewController = root ;
    [self.window makeKeyAndVisible] ;
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    
}

- (void)applicationWillTerminate:(UIApplication *)application {
    
}

@end
