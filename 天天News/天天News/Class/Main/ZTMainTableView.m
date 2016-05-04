//
//  ZTMainTableView.m
//  天天News
//
//  Created by 赵天 on 16/4/19.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTMainTableView.h"

@implementation ZTMainTableView

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style
{
    self = [super initWithFrame: frame style:style];
    
    [self registerNib:[UINib nibWithNibName:@"ZTMainCell" bundle:nil] forCellReuseIdentifier:@"reuseMainCell"];
    return self;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/


@end
