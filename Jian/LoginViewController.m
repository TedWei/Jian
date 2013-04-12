//
//  MainViewController.m
//  Jian
//
//  Created by Ted on 9/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "LoginViewController.h"
#import "AppDelegate.h"
#import "JianHome_timelineViewController.h"
#import "JianDiscover_timelineViewController.h"
#import "JianCameraViewController.h"
#import "JianDefaultViewController.h"
#import "JianTabBarController.h"
#import "JianCommentViewController.h"


@interface LoginViewController ()
{
    UIView *slightView;
}
@end

@implementation LoginViewController
- (SinaWeibo *)sinaweibo
{
    AppDelegate *delegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    return delegate.sinaweibo;
}

- (void)removeAuthData
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"SinaWeiboAuthData"];
}

- (void)storeAuthData
{
    SinaWeibo *sinaweibo = [self sinaweibo];
    
    NSDictionary *authData = [NSDictionary dictionaryWithObjectsAndKeys:
                              sinaweibo.accessToken, @"AccessTokenKey",
                              sinaweibo.expirationDate, @"ExpirationDateKey",
                              sinaweibo.userID, @"UserIDKey",
                              sinaweibo.refreshToken, @"refresh_token", nil];
    [[NSUserDefaults standardUserDefaults] setObject:authData forKey:@"SinaWeiboAuthData"];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.view.backgroundColor=[UIColor redColor];
    }
    return self;
}

-(void)viewDidAppear:(BOOL)animated
{
    
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"sinaweiboDidLogin"]==YES) {
        [self loadMainViewControllers];
    }
    

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





-(void)loadMainViewControllers
{
    JianHome_timelineViewController *home_timelineViewController=[[JianHome_timelineViewController alloc]init];
    
    
    
    JianDiscover_timelineViewController *discover_timelineViewController=[[JianDiscover_timelineViewController alloc]init];

    JianCameraViewController *cameraViewController=[[JianCameraViewController alloc]init];
    JianDefaultViewController *defaultViewControoler=[[JianDefaultViewController alloc]init];
    JianCommentViewController *commentViewController=[[JianCommentViewController alloc]init];

    JianTabBarController *tabbarController=[[JianTabBarController alloc]initWithTabBarHeight:50];
    [tabbarController setMinimumHeightToDisplayTitle:40];
    
    NSMutableArray *tabbarControllers=[NSMutableArray arrayWithObjects:home_timelineViewController,discover_timelineViewController,cameraViewController,commentViewController,defaultViewControoler,nil];
    
    [tabbarController setTabTitleIsHidden:YES];
    
     [tabbarController setIconColors:@[[UIColor colorWithRed:174.0/255.0 green:174.0/255.0 blue:174.0/255.0 alpha:1], [UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1]]]; // MAX 2 Colors
    [tabbarController setSelectedIconColors:@[[UIColor colorWithRed:174.0/255.0 green:174.0/255.0 blue:174.0/255.0 alpha:1], [UIColor colorWithRed:228.0/255.0 green:228.0/255.0 blue:228.0/255.0 alpha:1]]]; // MAX 2 Colors
    
    [tabbarController setViewControllers:tabbarControllers];
    
    [self presentViewController:tabbarController animated:NO completion:nil];
}

-(void)loginButtonPressend
{
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    NSLog(@"%@", [keyWindow subviews]);
    SinaWeibo *sinaweibo =[self sinaweibo];
    [sinaweibo logIn];
    
}

-(void)tabBarController:(UITabBarController *)tabBarController didSelectViewController:(UIViewController *)viewController
{
    Float32 AlphaDurationtime=0.05;
    Float32 MoveDurationtime=0.2;
    if (tabBarController.selectedIndex ==3) {
        [UIView animateWithDuration:AlphaDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
        }completion:^(BOOL finished){
                if (finished) {
                    slightView.alpha=1;
                    } }];

        [UIView animateWithDuration:MoveDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
            [slightView setFrame:CGRectMake(260, 0, 35, 5)];} completion:^(BOOL finished){
            if (finished) {
                [UIView animateWithDuration:AlphaDurationtime animations:^(void){slightView.alpha=0.2;}];
                } }];        
    }
    if (tabBarController.selectedIndex ==2) {
        [UIView animateWithDuration:AlphaDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
        }completion:^(BOOL finished){
            if (finished) {
                slightView.alpha=1;
            } }];
        
        [UIView animateWithDuration:MoveDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
            [slightView setFrame:CGRectMake(180, 0, 35, 5)];} completion:^(BOOL finished){
                if (finished) {
                    [UIView animateWithDuration:AlphaDurationtime animations:^(void){slightView.alpha=0.2;}];
                } }];
    }
    if (tabBarController.selectedIndex ==1) {
        [UIView animateWithDuration:AlphaDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
        }completion:^(BOOL finished){
            if (finished) {
                slightView.alpha=1;
            } }];
        
        [UIView animateWithDuration:MoveDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
            [slightView setFrame:CGRectMake(100, 0, 35, 5)];} completion:^(BOOL finished){
                if (finished) {
                    [UIView animateWithDuration:AlphaDurationtime animations:^(void){slightView.alpha=0.2;}];
                } }];
    }
    if (tabBarController.selectedIndex ==0) {
        [UIView animateWithDuration:AlphaDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
        }completion:^(BOOL finished){
            if (finished) {
                slightView.alpha=1;
            } }];
        
        [UIView animateWithDuration:MoveDurationtime delay:0 options:UIViewAnimationOptionLayoutSubviews animations:^(void){
            [slightView setFrame:CGRectMake(20, 0, 35, 5)];} completion:^(BOOL finished){
                if (finished) {
                    [UIView animateWithDuration:AlphaDurationtime animations:^(void){slightView.alpha=0.2;}];
                } }];
    }



}

#pragma mark - SinaWeibo Delegate

- (void)sinaweiboDidLogIn:(SinaWeibo *)sinaweibo
{
    NSLog(@"sinaweiboDidLogIn userID = %@ accesstoken = %@ expirationDate = %@ refresh_token = %@", sinaweibo.userID, sinaweibo.accessToken, sinaweibo.expirationDate,sinaweibo.refreshToken);
    BOOL sinaweiboDidLogin = YES;
    [[NSUserDefaults standardUserDefaults] setBool:sinaweiboDidLogin forKey:@"sinaweiboDidLogin"];
    if ([[NSUserDefaults standardUserDefaults] boolForKey:@"sinaweiboDidLogin"]==YES) {
        [self loadMainViewControllers];
    }
    [self storeAuthData];
}

- (void)sinaweiboDidLogOut:(SinaWeibo *)sinaweibo
{
    NSLog(@"sinaweiboDidLogOut");
    BOOL sinaweiboDidLogin = NO;
    [[NSUserDefaults standardUserDefaults] setBool:sinaweiboDidLogin forKey:@"sinaweiboDidLogin"];
    [self dismissViewControllerAnimated:YES completion:nil];
    [self removeAuthData];
}

- (void)sinaweiboLogInDidCancel:(SinaWeibo *)sinaweibo
{
    NSLog(@"sinaweiboLogInDidCancel");
}

- (void)sinaweibo:(SinaWeibo *)sinaweibo logInDidFailWithError:(NSError *)error
{
    NSLog(@"sinaweibo logInDidFailWithError %@", error);
}

- (void)sinaweibo:(SinaWeibo *)sinaweibo accessTokenInvalidOrExpired:(NSError *)error
{
    NSLog(@"sinaweiboAccessTokenInvalidOrExpired %@", error);
    [self removeAuthData];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
