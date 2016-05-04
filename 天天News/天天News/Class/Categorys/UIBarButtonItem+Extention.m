//
//  UIBarButtonItem+Extention.m
//  天天News
//
//  Created by 赵天 on 16/4/20.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "UIBarButtonItem+Extention.h"

@implementation UIBarButtonItem (Extention)
+ (UIBarButtonItem *)itemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action

{
    UIButton *leftBtn = [[UIButton alloc] init];
    [leftBtn setBackgroundImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [leftBtn setBackgroundImage:[UIImage imageNamed:highImageName] forState:UIControlStateHighlighted];
    leftBtn.size = leftBtn.currentBackgroundImage.size;
    [leftBtn addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    return [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
}
@end
