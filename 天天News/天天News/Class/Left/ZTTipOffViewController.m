//
//  ZTTipOffViewController.m
//  天天News
//
//  Created by 赵天 on 16/4/18.
//  Copyright © 2016年 zhaotian. All rights reserved.
//

#import "ZTTipOffViewController.h"
#import "AppDelegate.h"
#import "ZTMyTextView.h"
@interface ZTTipOffViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *myTextView;
@property (weak, nonatomic) IBOutlet UITextField *emailTextField;
@property (nonatomic,strong) ZTMyTextView *ztTextView;

@end

@implementation ZTTipOffViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self addZTMyTextView];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)addZTMyTextView
{
    self.ztTextView = [[ZTMyTextView alloc] initWithFrame:self.myTextView.frame];
    self.ztTextView.placeholder = @"我的爆料......";
    self.ztTextView.delegate = self;
    [self.myTextView addSubview:self.ztTextView];
}

- (IBAction)backBtnClick:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
- (IBAction)tipOffBtnClick:(id)sender {
    
    
}
#pragma mark --UITextViewDelegate

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"/n"])
    {
        [textView resignFirstResponder];
    }
    return  YES;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.ztTextView resignFirstResponder];
    [self.emailTextField resignFirstResponder];
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
