//
//  YYMoreThreadController.m
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYMoreThreadController.h"

#import <MBProgressHUD/MBProgressHUD.h>
#import "YYDocument.h"
#import "MoreView.h"
#import <objc/objc-runtime.h>
#import "User.h"
#import "YYProcessHUD.h"
@implementation YYMoreThreadController


- (void)viewDidLoad
{
    MoreView *moreView = [[MoreView alloc] initWithStyle:MoreViewStyleDefault target:self action:@selector(loadCompleted)] ;
    
//    MBProgressHUD *mb = [[MBProgressHUD alloc] initWithView:self.view] ;
//    [mb showAnimated:YES whileExecutingBlock:^{
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            
//        });
//    } completionBlock:^{
//        
//    } ] ;
   // [mb show:YES] ;
    
    //类名
    const char *className = [NSStringFromClass([User class]) cStringUsingEncoding:NSUTF8StringEncoding] ;
    //从一个字符串返回一个类
    Class cls = objc_getClass(className) ;
    
    if (!cls) {
        Class superClass = [NSObject class] ;
        cls = objc_allocateClassPair(superClass, className, 0) ;
        //注册创建的类
        objc_registerClassPair(cls) ;
    }
    SEL method = @selector(testObjcMsg) ;
    
    id newObject = [[cls alloc] init] ;
    //获取对象的属性列表
    unsigned int outCout,i ;
    
    objc_property_t *properties = class_copyPropertyList([newObject class], &outCout) ;
    
    for (i = 0 ; i < outCout; i++) {
        objc_property_t property = properties[i] ;
        NSString *propertyName = [[NSString alloc] initWithCString:property_getName(property) encoding:NSUTF8StringEncoding] ;
        if([propertyName isEqualToString:@"userName"])
        {
            [newObject setValue:@"yang" forKey:@"userName"] ;
        }
        NSLog(@"%@",propertyName) ;
    }
    free(properties) ;
    
    NSString *userName = [newObject valueForKey:@"userName"] ;

    NSLog(@"%@",userName) ;
    
    
    YYProcessHUD *process = [[YYProcessHUD alloc] initWithFrame:CGRectMake(10, 80, 100, 100)] ;
    
    [self.view addSubview:process] ;
    
}


- (void) loadCompleted
{
    NSLog(@"call success") ;
}

@end
