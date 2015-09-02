//
//  MoreView.m
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "MoreView.h"
@implementation MoreView



- (id) initWithStyle : (MoreViewStyle) style target:(id) target action:(SEL)action
{
    
    self = [super init];
    if (self) {
        const char *name = object_getClassName(target) ;
        NSLog(@"class name = %s",name) ;
        const char *methodName = sel_getName(action) ;
        NSLog(@"method name = %s",methodName) ;
        
        if(target != nil || action != nil)
        [target performSelector:action] ;
    }
    return self;
}



- (void) onLoadImageExectue : (dispatch_block_t) exec finish : (void (^)()) finish
{
    MoreViewShowComplte block = ^(NSInteger index,NSString* name)
    {
        NSLog(@"%@",name) ;
    } ;
    
    block(1,@"yang") ;
    finish() ;
}


- (YYDownloadState) downloadState
{
    return YYDownloadStateFinished ;
}

- (void) didShowComplete : (MoreViewShowComplte) complete
{
    
}

- (BOOL)shouldShowComplete
{
    return YES ;
}

- (MoreViewFixable)fixableStyle
{
    return MoreViewFixableHeight | MoreViewFixableWidth ;
}

@end
