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
    
	// Do any additional setup after loading the view.
}

- (NSString *)tabImageName
{
	return @"homeicon";
}

- (NSString *)tabTitle
{
	return self.title;
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
