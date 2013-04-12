//
//  JianTabBarView.h
//  Jian
//
//  Created by Ted on 12/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "JianTabBar.h"

@interface JianTabBarView : UIView

@property (nonatomic, strong) JianTabBar *tabBar;
@property (nonatomic, strong) UIView *contentView;
@property (nonatomic, assign) BOOL isTabBarHidding;
@end
