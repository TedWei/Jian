//
//  MainViewController.m
//  Jian
//
//  Created by Ted on 10/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "JianHome_timelineViewController.h"
#import "AppDelegate.h"
#import "SinaWeibo.h"

@interface JianHome_timelineViewController ()

@end

@implementation JianHome_timelineViewController

- (SinaWeibo *)sinaweibo
{
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    return delegate.sinaweibo;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UITableView *tableView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, self.view.bounds.size.height) style:UITableViewStylePlain];
    tableView.delegate=self;
    tableView.dataSource=self;
    
    
    [self.view addSubview:tableView];
    
    
    navBarView=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 320, 44)];
    navBarView.backgroundColor=[UIColor blackColor];
    
    activityView = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(0 , 0, 30, 30)];
    [activityView setCenter:CGPointMake(290, 22)];
    [activityView setActivityIndicatorViewStyle:UIActivityIndicatorViewStyleWhite];
    [navBarView addSubview:activityView];
        
    refreshButton=[[UIButton alloc]initWithFrame:CGRectMake(280, 10, 25, 25)];
    [refreshButton setBackgroundImage:[UIImage imageNamed:@"fancybox_loading1"] forState:UIControlStateNormal];
    
    [refreshButton addTarget:self action:@selector(startRefreshing) forControlEvents:UIControlEventTouchDown];
    
    [navBarView addSubview:refreshButton];
    [self.view addSubview:navBarView];
    
    //下拉刷新初始化
    if (refreshHeaderView == nil) {
		
		EGORefreshTableHeaderView *view = [[EGORefreshTableHeaderView alloc] initWithFrame:CGRectMake(0.0f, 0.0f - navBarView.bounds.size.height, self.view.frame.size.width, navBarView.bounds.size.height)];
		view.delegate = self;
		[navBarView addSubview:view];
		refreshHeaderView = view;
		
	}

    
    
}

-(void)startRefreshing
{
    refreshButton.alpha=0;
    refreshButton.highlighted=YES;
    [activityView startAnimating];
}

- (NSString *)tabImageName
{
	return @"homeicon";
}

- (NSString *)tabTitle
{
	return self.title;
}



# pragma tableviewDelegate
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 12;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *detailCell = (UITableViewCell *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (detailCell == nil) {
        detailCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                      
                                            reuseIdentifier:CellIdentifier] ;
    }
        return detailCell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
