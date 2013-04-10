//
//  JianDefaultViewController.m
//  Jian
//
//  Created by Ted on 10/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "JianDefaultViewController.h"
#import "AppDelegate.h"
#import "SinaWeibo.h"

@interface JianDefaultViewController ()

@end

@implementation JianDefaultViewController
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
    UIButton *loginbutton=[UIButton buttonWithType:UIButtonTypeCustom];
    UIImage *loginImage=[UIImage imageNamed:@"loginbtn_03"];
    [loginbutton setImage:loginImage forState:UIControlStateNormal];
    
    loginbutton.frame=CGRectMake(self.view.frame.size.width*0.35, self.view.frame.size.height*0.4,loginImage.size.width, loginImage.size.height);
    [loginbutton addTarget:self action:@selector(loginButtonPressend) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:loginbutton];

	// Do any additional setup after loading the view.
}

-(void)loginButtonPressend
{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    NSLog(@"%@", [keyWindow subviews]);
    SinaWeibo *sinaweibo =[self sinaweibo];
    [sinaweibo logOut];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
