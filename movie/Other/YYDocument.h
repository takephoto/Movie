//
//  YYDocument.h
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YYDocument : UIViewController


+ (NSString*) pathForRootDocument ;
+ (YYDocument*) sharedYYDocument ;
@end
