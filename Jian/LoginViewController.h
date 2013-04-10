//
//  MainViewController.h
//  Jian
//
//  Created by Ted on 9/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SinaWeibo.h"
#import "SinaWeiboRequest.h"

@interface LoginViewController : UIViewController<SinaWeiboDelegate,SinaWeiboRequestDelegate,UITabBarControllerDelegate>


@end
