//
//  ZTRows.m
//  天天News
//
//  Created by scjy on 16/5/4.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTRows.h"
#import "ZTNewsPicList.h"
#import <MJExtension.h>
@implementation ZTRows

+ (NSDictionary *)mj_objectClassInArray
{
    return @{@"newsPicRelaList":[ZTNewsPicList class]};
}

@end
