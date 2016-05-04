//
//  ZTMainViewController.m
//  天天News
//
//  Created by 赵天 on 16/4/18.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTMainViewController.h"
#import "ZTNavigationController.h"
#import "ZTMainTableView.h"
#import "ZTMainCell.h"
#import "RESideMenu.h"
#import <AFNetworking.h>
#import "AppDelegate.h"
@interface ZTMainViewController ()<UITableViewDelegate,UITableViewDataSource>

@property(nonatomic,strong)ZTMainTableView *mainTableView;

@end

@implementation ZTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.view.backgroundColor = [UIColor yellowColor];

    self.mainTableView = [[ZTMainTableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    self.mainTableView.delegate = self;
    self.mainTableView.dataSource = self;
    [self.view addSubview:self.mainTableView];
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"nav_main_left" highImage:@"nav_main_left" target:self action:@selector(goToLeftVC)];
    
    NSDictionary *parameters = @{@"pagesize":@10 ,@"flag":@"1" ,@"page":@1};
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    //**************************************
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    
    manager.responseSerializer.acceptableContentTypes  =  [NSSet setWithObjects:@"application/json", @"text/json", @"text/javascript", @"text/html", @"text/plain",@"application/xml", nil];
    [manager.requestSerializer setValue:@"application/json; charset=UTF-8" forHTTPHeaderField:@"Content-Type"];
    [manager POST:@"http://mengma.jinbw.com.cn:53808/queryIndexNewsList.do" parameters:parameters progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSDictionary *dict = responseObject;
        ZTLog(@"%@",dict);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        ZTLog(@"error ********%@",error);
        
    }];
    
}

- (void)goToLeftVC
{
   AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    [appDelegate.sideMenu presentLeftMenuViewController];
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
    ZTMainCell *cell =[tableView dequeueReusableCellWithIdentifier:@"reuseMainCell" forIndexPath:indexPath];
//    if (!cell)
//    {
//        cell = [[ZTMainCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ID];
//    }
//    cell.textLabel.text = [NSString stringWithFormat:@"测试数据------%ld",(long)indexPath.row];
    return cell;
}

#pragma mark -- UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 268.f;
}
@end
