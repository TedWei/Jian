//
//  AppDelegate.h
//  Jian
//
//  Created by Ted on 9/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kAppKey             @"29894543"
#define kAppSecret          @"8cb17358d7ddc0f88ff556a4a7a5e387"
#define kAppRedirectURI     @"https://api.weibo.com/oauth2/default.html"

#ifndef kAppKey
#error
#endif

#ifndef kAppSecret
#error
#endif

#ifndef kAppRedirectURI
#error
#endif

@class SinaWeibo;
@class LoginViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{

    SinaWeibo *sinaweibo;
    
}

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, nonatomic) SinaWeibo *sinaweibo;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
