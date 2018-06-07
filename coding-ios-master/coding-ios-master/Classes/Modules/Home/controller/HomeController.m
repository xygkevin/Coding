//
//  HomeController.m
//  coding-ios-master
//
//  Created by MAC on 2018/6/7.
//  Copyright © 2018年 kk. All rights reserved.
//

#import "HomeController.h"
#import "HomeView.h"

#pragma mark - 声明
@interface HomeController ()

@property (nonatomic, strong) UIScrollView *scroll;
@property (nonatomic, strong) HomeView *homev;

@end

#pragma mark - 实现
@implementation HomeController

#pragma mark - 初始化
- (void)viewDidLoad {
    [super viewDidLoad];
    [self createView];
}
- (void)createView {
    [self scroll];
    [self homev];
}
- (UIScrollView *)scroll {
    if (!_scroll) {
        _scroll = [[UIScrollView alloc] initWithFrame:ScreenBounds];
        [_scroll setPagingEnabled:YES];
        [_scroll setContentSize:CGSizeMake(ScreenWidth * 2, 0)];
        [_scroll setShowsHorizontalScrollIndicator:NO];
        [self.view addSubview:_scroll];
    }
    return _scroll;
}
- (HomeView *)homev {
    if (!_homev) {
        _homev = [HomeView loadCode:ScreenBounds];
        [self.scroll addSubview:_homev];
    }
    return _homev;
}

@end