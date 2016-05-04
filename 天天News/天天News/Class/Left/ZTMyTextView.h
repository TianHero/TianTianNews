//
//  ZTMyTextView.h
//  天天News
//
//  Created by 赵天 on 16/5/2.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZTMyTextView : UITextView
//palceholder
@property (nonatomic,copy) NSString *placeholder;
//是否要画palceholder，当用户开始输入的时候不需要画出来palceholder了
@property (nonatomic,assign) BOOL isDrawPlaceholder;
@end
