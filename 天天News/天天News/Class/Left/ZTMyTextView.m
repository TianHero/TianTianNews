//
//  ZTMyTextView.m
//  天天News
//
//  Created by 赵天 on 16/5/2.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTMyTextView.h"

@implementation ZTMyTextView
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //判断是否需要画Placeholder
        self.isDrawPlaceholder = YES;
        
        self.font = [UIFont systemFontOfSize:17.f];
        //没有输入的时候return键不能被点击
        self.enablesReturnKeyAutomatically = YES;
        //注册通知实现观察者，监听是否改变了TextView
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewTextHaveChanged:) name:UITextViewTextDidChangeNotification object:nil];
    }
    return self;
}
//实现通知
- (void)textViewTextHaveChanged:(NSNotification *)notification
{
    //不画
    self.isDrawPlaceholder = NO;
    if ([self.text isEqualToString:@""])
    {
        //如果还没有输入，划
        self.isDrawPlaceholder = YES;
        
    }
    [self setNeedsDisplay];
    return;
}

- (void)setPlaceholder:(NSString *)placeholder
{
    _placeholder = placeholder;
    //强制出发drawRect
    [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
    //如果self.isDrawPlaceholder是NO就不划线
    if (!_isDrawPlaceholder)
    {
        return;
    }
    
    NSDictionary *attributes = @{NSFontAttributeName:self.font,NSForegroundColorAttributeName:[UIColor blackColor]};
    
    [self.placeholder drawInRect:(CGRect){6,8,rect.size.width - 16,rect.size.height - 16} withAttributes:attributes];
    
}

//注销通知
- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:nil];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
