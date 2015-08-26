//
//  YYMovieCell.m
//  movie
//
//  Created by 杨洋 on 15/8/25.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYMovieCell.h"

@implementation YYMovieCell


- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        CGFloat HEIGHT = 20.0f ;
        
        _image = [self addMovieImageView] ;
        _image.frame = CGRectMake(0, 0, frame.size.width, frame.size.height - HEIGHT) ;
        [self.contentView addSubview:_image] ;
        
        _name = [self addMovieNameLabel] ;
        _name.frame = CGRectMake(0, frame.size.height - HEIGHT, frame.size.width, HEIGHT) ;
        [self.contentView addSubview:_name] ;
        
    }
    return self;
}


- (UIImageView*) addMovieImageView
{
    UIImageView *imageView = [[UIImageView alloc] init] ;
    imageView.layer.cornerRadius = 3.0f ;
    imageView.clipsToBounds = YES ;
    
    return imageView ;
}

- (UILabel*) addMovieNameLabel
{
    UILabel *label = [[UILabel alloc] init] ;
    label.font = [UIFont boldSystemFontOfSize:10] ;
    label.text = @"终结者" ;
    return label ;
}




@end
