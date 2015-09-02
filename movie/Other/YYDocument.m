//
//  YYDocument.m
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYDocument.h"

@implementation YYDocument


+ (YYDocument*) sharedYYDocument
{
    static dispatch_once_t onceToken;
    static id instance ;
    dispatch_once(&onceToken, ^{
        instance = [self new] ;
    });
    return instance ;
}


+ (NSString*) pathForRootDocument
{
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject] ;
    return path ;
}

@end
