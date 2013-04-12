//
//  JianCommentViewController.m
//  Jian
//
//  Created by Ted on 13/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "JianCommentViewController.h"

@implementation JianCommentViewController

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
	return @"commenticon";
}

- (NSString *)tabTitle
{
	return self.title;
}


@end
