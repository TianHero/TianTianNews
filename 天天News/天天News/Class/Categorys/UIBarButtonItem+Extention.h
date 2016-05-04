//
//  UIBarButtonItem+Extention.h
//  天天News
//
//  Created by 赵天 on 16/4/20.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extention)

+ (UIBarButtonItem *)itemWithImage:(NSString *)imageName highImage:(NSString *)highImageName target:(id)target action:(SEL)action;

@end
