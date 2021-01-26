//
//  JXNetworkManager.m
//  SupportCarthageSDK
//
//  Created by meikiemi on 2021/1/26.
//

#import "JXNetworkManager.h"
#import <AFNetworking/AFNetworking.h>

@implementation JXNetworkManager

- (instancetype)init{
    self = [super init];
    if (self) {
        
        [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
            NSLog(@"当前网络状态->%@",@(status));
        }];
    }
    return self;
}

- (void)start{
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
}

@end
