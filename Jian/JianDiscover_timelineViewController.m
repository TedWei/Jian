//
//  JianDiscover_timelineViewController.m
//  Jian
//
//  Created by Ted on 10/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "JianDiscover_timelineViewController.h"

@interface JianDiscover_timelineViewController ()

@end

@implementation JianDiscover_timelineViewController

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
	return @"discovericon";
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
