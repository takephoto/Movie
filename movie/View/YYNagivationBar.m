//
//  YYNagivationBar.m
//  movie
//
//  Created by 杨洋 on 15/9/2.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYNagivationBar.h"

@implementation YYNagivationBar


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        //背景
        _backgroundImage = [[UIImageView alloc] init] ;
        [self addSubview:_backgroundImage] ;
        _backgroundImage.frame = CGRectMake(0, 0, frame.size.width, frame.size.height) ;
        
        //标题
        
        _title = [[UILabel alloc] init] ;
        _title.font = [UIFont systemFontOfSize:1];
        
        
    }
    return self;
}

@end
