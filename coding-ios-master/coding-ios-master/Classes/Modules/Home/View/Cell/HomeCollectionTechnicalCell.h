//
//  HomeCollectionTechnicalCell.h
//  coding-ios-master
//
//  Created by 郑业强 on 2018/4/17.
//  Copyright © 2018年 kk. All rights reserved.
//

#import <UIKit/UIKit.h>

#pragma mark - 声明
@interface HomeCollectionTechnicalCell : UICollectionViewCell

@property (nonatomic, strong) HomeTechnicalModel *model;

+ (instancetype)initWithCollection:(UICollectionView *)collection index:(NSIndexPath *)index;

@end