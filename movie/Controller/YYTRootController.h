//
//  YYTRootController.h
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYTRootController : UITabBarController

@property (strong, nonatomic) UINavigationController *top ;
@property (strong, nonatomic) UINavigationController *search ;
@property (strong, nonatomic) UINavigationController *recent ;
@property (strong, nonatomic) UINavigationController *bookmark ;
@property (strong, nonatomic) UINavigationController *feature ;

@end
