//
//  MoreView.h
//  movie
//
//  Created by 杨洋 on 15/8/31.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import <UIKit/UIKit.h>

// iOS 声明枚举的两种方式
// NS_ENUM 只能单选
// NS_OPTIONS 可以多选 MoreViewFixableWidth | MoreViewFixableHeight

 
typedef NS_ENUM(NSInteger, YYDownloadState)
{
   YYDownloadStateExecting ,
   YYDownloadStateFinished ,
   YYDownloadStateError
} ;

typedef void(^MoreViewShowComplte)(NSInteger index,NSString *name);


typedef NS_ENUM(NSInteger, MoreViewStyle)
{
    MoreViewStyleSystem ,
    MoreViewStyleDefault ,
    MoreViewStyleRemark 
} ;

typedef NS_OPTIONS(NSInteger, MoreViewFixable)
{
    MoreViewFixableNone             = 0 ,
    MoreViewFixableWidth            = 1 << 0,
    MoreViewFixableHeight           = 1 << 1 ,
    MoreViewFixableMarginLeft       = 1 << 2 ,
    MoreViewFixableMarginRight      = 1 << 3
} ;


@protocol MoreViewDelegate <NSObject>

@optional

@end

@interface MoreView : UIViewController

- (id) initWithStyle : (MoreViewStyle) style target:(id) target action:(SEL)action ;
- (BOOL) shouldShowComplete ;
- (void) didShowComplete : (MoreViewShowComplte) complete ;
- (MoreViewFixable) fixableStyle ;
@end
