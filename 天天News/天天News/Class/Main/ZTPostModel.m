//
//  ZTPostModel.m
//  天天News
//
//  Created by scjy on 16/5/4.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTPostModel.h"
#import "ZTRows.h"
#import <MJExtension.h>
@implementation ZTPostModel

+ (NSDictionary *) mj_objectClassInArray
{
    return @{@"rows":[ZTRows class]};
}

@end
