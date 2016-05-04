//
//  ZTLeftViewController.m
//  天天News
//
//  Created by 赵天 on 16/4/27.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTLeftViewController.h"
#import "ZTTipOffViewController.h"
#import "ZTMessageViewController.h"
#import "ZTSettingViewController.h"
#import "ZTKeepViewController.h"
@interface ZTLeftViewController ()
@property (weak, nonatomic) IBOutlet UIButton *iconBtn;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UITableView *mTableView;

@end

@implementation ZTLeftViewController

- (void)viewWillAppear:(BOOL)animated
{
    self.view.frame = CGRectMake(0.f, 0.f, kScreenWidth - 20.f, kScreenHeight);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//返回首页
- (IBAction)backHomeBtnClick:(id)sender {

}
//头像
- (IBAction)iconBtnClick:(id)sender {
}

//爆料
- (IBAction)baoliaoBtnClick:(id)sender {
    ZTTipOffViewController *targetVC = [[ZTTipOffViewController alloc] init];
    [self presentViewController:targetVC animated:YES completion:nil];
}
//消息
- (IBAction)messageBtnClick:(id)sender {
    ZTMessageViewController *targetVC = [[ZTMessageViewController alloc] init];
    [self presentViewController:targetVC animated:YES completion:nil];
}
//收藏
- (IBAction)keepBtnClick:(id)sender {
    ZTKeepViewController *targetVC = [[ZTKeepViewController alloc] init];
    [self presentViewController:targetVC animated:YES completion:nil];
}

//设置
- (IBAction)settingBtnClick:(id)sender {
    ZTSettingViewController *targetVC = [[ZTSettingViewController alloc] init];
    [self presentViewController:targetVC animated:YES completion:nil];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *ID = @"ZTCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"测试数据------%ld",(long)indexPath.row];
    return cell;
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
