//
//  ZTLeftNavController.m
//  天天News
//
//  Created by 赵天 on 16/4/27.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTLeftNavController.h"

@interface ZTLeftNavController ()

@end

@implementation ZTLeftNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationBar.hidden = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
