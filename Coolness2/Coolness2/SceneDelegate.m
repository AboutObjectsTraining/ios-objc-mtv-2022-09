// Copyright (C) 2022 About Objects, Inc. All Rights Reserved.
// See LICENSE.txt for this project's licensing information.

#import "SceneDelegate.h"
#import "CLNCoolViewController.h"

@implementation SceneDelegate

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    
    self.window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    self.window.rootViewController = [[CLNCoolViewController alloc] initWithNibName:@"CoolStuff" bundle:nil];
    self.window.backgroundColor = UIColor.systemYellowColor;
    [self.window makeKeyAndVisible];
}

@end
