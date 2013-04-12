//
//  UINavigationController+JianTabBarController.m
//  Jian
//
//  Created by Ted on 12/4/13.
//  Copyright (c) 2013 卫 强. All rights reserved.
//

#import "UINavigationController+JianTabBarController.h"

@implementation UINavigationController (JianTabBarController)

- (NSString *)tabImageName
{
	return [[self.viewControllers objectAtIndex:0] tabImageName];
}

- (NSString *)tabTitle
{
	return [[self.viewControllers objectAtIndex:0] tabTitle];
}
@end
