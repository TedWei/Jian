//
//  MainViewController.h
//  Jian
//
//  Created by Ted on 10/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EGORefreshTableHeaderView.h"

@interface JianHome_timelineViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,EGORefreshTableHeaderDelegate>
{
    UIActivityIndicatorView *activityView;
    UIButton *refreshButton;
    EGORefreshTableHeaderView *refreshHeaderView;
    UIView *navBarView;
}

-(void)startRefreshing;

@end
    