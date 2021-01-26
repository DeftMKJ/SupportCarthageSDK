//
//  JXViewController.m
//  SupportCarthageSDK
//
//  Created by 714831204@qq.com on 01/26/2021.
//  Copyright (c) 2021 714831204@qq.com. All rights reserved.
//

#import "JXViewController.h"
#import <Masonry/Masonry.h>
#import <SupportCarthageSDK/JXNetworkManager.h>
#import <SupportCarthageSDK/JXButtonView.h>

@interface JXViewController ()

@end

@implementation JXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    JXNetworkManager *manager = [[JXNetworkManager alloc] init];
    [manager start];
    
    JXButtonView *buttonView = [[JXButtonView alloc] initWithFrame:CGRectZero title:@"123"];
    buttonView.backgroundColor = [UIColor redColor];
    [self.view addSubview:buttonView];
    [buttonView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.size.mas_equalTo(CGSizeMake(100, 150));
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
