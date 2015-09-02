//
//  AppConfig.m
//  movie
//
//  Created by 杨洋 on 15/9/1.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "AppConfig.h"

@implementation AppConfig

+ (id)sharedAppConfig
{
    static dispatch_once_t onceToken;
    static id instance ;
    dispatch_once(&onceToken, ^{
        instance = [self new] ;
    });
    return instance ;
}




@end
