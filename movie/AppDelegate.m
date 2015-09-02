//
//  AppDelegate.m
//  movie
//
//  Created by 杨洋 on 15/8/25.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "AppDelegate.h"
#import "YYTRootController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds] ;
    self.window.backgroundColor = [UIColor whiteColor] ;

    YYTRootController *tabBar = [[YYTRootController alloc] init] ;
    self.window.rootViewController = tabBar ;
    
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
