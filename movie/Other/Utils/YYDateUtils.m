//
//  YYDateUtils.m
//  movie
//
//  Created by 杨洋 on 15/9/1.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYDateUtils.h"

@implementation YYDateUtils

static NSDateFormatter *df = nil ;

- (instancetype)init
{
    self = [super init];
    if (self) {
        df = [[NSDateFormatter alloc] init] ;
    }
    return self;
}

+ (id) sharedDateUtils
{
    static dispatch_once_t onceToken;
    static id instance ;
    dispatch_once(&onceToken, ^{
        df = [[NSDateFormatter alloc] init] ;
        instance = [[self alloc] init] ;
    });
    return instance ;
}


+ (NSString*) dateFormaterWith : (YYDateFormate) fmt andSepchar : (YYDateFormateSeparator) separator
{
    [df setDateFormat:@""] ;
    NSString *result = [df stringFromDate:[NSDate date]] ;
    return result ;
}

@end
