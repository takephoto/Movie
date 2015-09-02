//
//  YYDateUtils.h
//  movie
//
//  Created by 杨洋 on 15/9/1.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import <Foundation/Foundation.h>

//格式化占位符
typedef NS_ENUM(NSInteger, YYDateFormate)
{
    YYDateFormateDateAndTime , //yyyyMMddHHmmss
    YYDateFormateDate ,        //yyyyMMdd
    YYDateFormateTime          //HHmm
} ;
//日期格式化字符
typedef NS_ENUM(NSInteger, YYDateFormateSeparator)
{
    YYDateFormateSeparatorNone , //
    YYDateFormateSeparatorDefault , // -
    YYDateFormateSeparatorColon , // :
} ;


@interface YYDateUtils : NSObject


+ (id) sharedDateUtils ;

@end
