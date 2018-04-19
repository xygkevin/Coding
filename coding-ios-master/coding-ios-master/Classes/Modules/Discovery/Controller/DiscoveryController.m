//
//  DiscoveryController.m
//  coding-ios-master
//
//  Created by 郑业强 on 2018/4/18.
//  Copyright © 2018年 kk. All rights reserved.
//

#import "DiscoveryController.h"
#import "DiscoveryView.h"

#pragma mark - 声明
@interface DiscoveryController()

@property (nonatomic, strong) DiscoveryView *discoveryView;

@end

#pragma mark - 实现
@implementation DiscoveryController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNavTitle:@"发现"];
}
- (void)loadView {
    self.view = [self discoveryView];
}
- (DiscoveryView *)discoveryView {
    if (!_discoveryView) {
        _discoveryView = [DiscoveryView init];
    }
    return _discoveryView;
}

@end