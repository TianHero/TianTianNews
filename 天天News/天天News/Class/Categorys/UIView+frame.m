//
//  UIView+frame.m
//  百思不得姐
//
//  Created by scjy on 16/3/19.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "UIView+frame.h"

@implementation UIView (frame)
/*****origin和size是基础,下面的x,y,width,height都是根据这连个个操作的*****/
//frame的origin
- (CGPoint)origin
{
    return self.frame.origin;
}
//frame的size
- (CGSize)size
{
    return self.frame.size;
}
- (CGPoint)center
{
    return (CGPoint){self.x + self.width / 2,self.y + self.height / 2};
}
- (CGFloat)x
{
    return self.origin.x;
}
- (CGFloat)y
{
    return self.origin.y;
}
- (CGFloat)width
{
    return self.size.width;
}
- (CGFloat)height
{
    return self.size.height;
}
//- (CGFloat)centerX
//{
//    return <#expression#>
//}

//set
- (void)setOrigin:(CGPoint)origin
{
    self.frame = (CGRect){origin,self.size};
}
- (void)setCenter:(CGPoint)center
{
    self.frame = (CGRect){center.x - self.width / 2,center.y - self.height / 2,self.size};
}
- (void)setSize:(CGSize)size
{
    self.frame = (CGRect){self.origin,size};
}
- (void)setX:(CGFloat)x
{
    self.origin = (CGPoint){x,self.y};
}

- (void)setY:(CGFloat)y
{
    self.origin = (CGPoint){self.x,y};
}
- (void)setWidth:(CGFloat)width
{
    self.size = (CGSize){width,self.height};
}
- (void)setHeight:(CGFloat)height
{
    self.size = (CGSize){self.width,height};
}


@end
