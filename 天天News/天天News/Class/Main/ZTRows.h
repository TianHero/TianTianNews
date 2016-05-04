//
//  ZTRows.h
//  天天News
//
//  Created by scjy on 16/5/4.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZTRows : NSObject

@property (nonatomic,strong) NSNumber *newid;

@property (nonatomic,copy) NSString *title;

@property (nonatomic,copy) NSString *source;

@property (nonatomic,copy) NSString *publishdateStr;

@property (nonatomic,strong) NSMutableArray *newsPicRelaList;



@end
