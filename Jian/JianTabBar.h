//
//  JianTabBar.h
//  Jian
//
//  Created by Ted on 12/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "JianTab.h"

@class JianTabBar;

@protocol JianTabBarDelegate <NSObject>

@required

// Used by the TabBarController to be notified when a tab is pressed
- (void)tabBar:(JianTabBar *)AKTabBarDelegate didSelectTabAtIndex:(NSInteger)index;

@end

@interface JianTabBar : UIView

@property (nonatomic, strong) NSArray *tabs;
@property (nonatomic, strong) JianTab *selectedTab;
@property (nonatomic, assign) id <JianTabBarDelegate> delegate;

// Tab top embos Color
@property (nonatomic, strong) UIColor *edgeColor;

// Tabs selected colors.
@property (nonatomic, strong) NSArray *tabColors;

// Tab background image
@property (nonatomic, strong) NSString *backgroundImageName;

- (void)tabSelected:(JianTab *)sender;
@end
