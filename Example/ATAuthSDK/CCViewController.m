//
//  CCViewController.m
//  ATAuthSDK
//
//  Created by dean on 2/04/2021.
//  Copyright (c) 2021 dean. All rights reserved.
//

#import "CCViewController.h"
#import <ATAuthSDK/ATAuthSDK.h>

@interface CCViewController ()

@end

@implementation CCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSString *version = [[TXCommonHandler sharedInstance]getVersion];
    NSLog(@"%@",version);
    
    NSString *info = @"your code";
    [[TXCommonHandler sharedInstance] setAuthSDKInfo:info complete:^(NSDictionary * _Nonnull resultDic) {
        NSLog(@"初始化成功");
    }];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 100, 40);
    button.backgroundColor = [UIColor yellowColor];
    [button addTarget:self action:@selector(work) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
}

- (void)work {
    TXCustomModel *model = [[TXCustomModel alloc] init];
    __weak typeof(self) weakSelf = self;
    [[TXCommonHandler sharedInstance] checkEnvAvailableWithComplete:^(NSDictionary * _Nullable resultDic) {
        [[TXCommonHandler sharedInstance] getLoginTokenWithTimeout:10.0 controller:weakSelf model:model complete:^(NSDictionary * _Nonnull resultDic) {
            NSString *code = [resultDic objectForKey:@"resultCode"];
            if ([PNSCodeLoginControllerPresentSuccess isEqualToString:code]) {
                NSLog(@"弹起授权页成功");
            } else if ([PNSCodeLoginControllerClickCancel isEqualToString:code]) {
                NSLog(@"点击了授权页的返回");
            } else if ([PNSCodeLoginControllerClickChangeBtn isEqualToString:code]) {
                NSLog(@"点击切换其他登录方式按钮");
            } else if ([PNSCodeLoginControllerClickLoginBtn isEqualToString:code]) {
                if ([[resultDic objectForKey:@"isChecked"] boolValue] == YES) {
                    NSLog(@"点击了登录按钮，check box选中，SDK内部接着会去获取登陆Token");
                } else {
                    NSLog(@"点击了登录按钮，check box选中，SDK内部不会去获取登陆Token");
                }
            } else if ([PNSCodeLoginControllerClickCheckBoxBtn isEqualToString:code]) {
                NSLog(@"点击check box");
            } else if ([PNSCodeLoginControllerClickProtocol isEqualToString:code]) {
                NSLog(@"点击了协议富文本");
            } else if ([PNSCodeSuccess isEqualToString:code]) {
                NSLog(@"点击登录按钮");
            }
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
