//
//  YYProcessHUD.m
//  movie
//
//  Created by 杨洋 on 15/9/1.
//  Copyright (c) 2015年 杨洋. All rights reserved.
//

#import "YYProcessHUD.h"

@implementation YYProcessHUD
{
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor greenColor] ;
    }
    return self;
}




/**
 *UIView 自定义画图方法 
 *如果 - (void)drawLayer:(CALayer *)layer inContext:(CGContextRef)ctx 被重写则drawRect不会被调用
 */


- (void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext() ;
    CGContextSetLineWidth(context, 1.0f) ;
    CGContextSetRGBStrokeColor(context, 255.0f, 0.0f, 0.0f, 1.0f) ;
    CGContextBeginPath(context) ;
    CGContextStrokeEllipseInRect(context, self.bounds) ;
   
    CGContextSetLineWidth(context, 5.0f) ;
    CGContextSetRGBStrokeColor(context, 0.0f, 0.0f, 255.0f, 1.0f) ;
    CGContextAddArc(context, self.frame.size.width / 2.0, self.frame.size.height / 2, 30, 0, 90, 1) ;
    
    CGContextStrokePath(context) ;
    
    //
   // CGContextRelease(context) ;
     //[self setNeedsDisplay] ;
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 开始触摸
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 停止触摸
}

- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event
{
    // 取消触摸
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    //
}


@end
