//
//  ZTTabBarController.m
//  天天News
//
//  Created by 赵天 on 16/4/18.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTTabBarController.h"
#import "ZTTipOffViewController.h"
#import "ZTMessageViewController.h"
#import "ZTKeepViewController.h"
#import "ZTSettingViewController.h"
#import "ZTNavigationController.h"
@interface ZTTabBarController ()

@end

@implementation ZTTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tabBar.backgroundColor = [UIColor whiteColor];
    [self.tabBar setTranslucent:NO];
    
    ZTTipOffViewController *tipOffVC = [[ZTTipOffViewController alloc] init];
    [self addSubVcWithChildVc:tipOffVC title:@"爆料" image:@"tab_baoliao"];
    
    
    ZTMessageViewController *messageVC = [[ZTMessageViewController alloc] init];
    [self addSubVcWithChildVc:messageVC title:@"消息" image:@"tab_message"];
    
    ZTKeepViewController *keepVc = [[ZTKeepViewController alloc] init];
    [self addSubVcWithChildVc:keepVc title:@"收藏" image:@"tab_keep"];
    
    ZTSettingViewController *settingVc = [[ZTSettingViewController alloc] init];
    [self addSubVcWithChildVc:settingVc title:@"设置" image:@"tab_setting"];    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addSubVcWithChildVc:(UIViewController *)childVc title:(NSString *)title image:(NSString *)iamge
{
    
    childVc.title = title;
    
    childVc.tabBarItem.image = [[UIImage imageNamed:iamge] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    ZTNavigationController *nav = [[ZTNavigationController alloc] initWithRootViewController:childVc];
    
    [self addChildViewController:nav];

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
