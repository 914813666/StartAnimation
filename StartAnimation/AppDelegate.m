//
//  AppDelegate.m
//  StartAnimation
//
//  Created by qzp on 16/1/21.
//  Copyright © 2016年 qzp. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window.frame = [UIScreen mainScreen].bounds;
    [self.window makeKeyAndVisible];
    
    [self setLuauchAnimation];
    return YES;
}


- (void) setLuauchAnimation {
    
    [self animation1];

}

- (void) animation1 {
    
    UIImageView * imageView = [[UIImageView alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [self.window addSubview: imageView];
    imageView.contentMode = UIViewContentModeScaleAspectFill;
    
    
    UIImageView * imageView2 = [[UIImageView alloc] initWithFrame: [UIScreen mainScreen].bounds];
    [self.window addSubview: imageView2];
    imageView2.image = [UIImage imageNamed:@"lat"];
     //正式项目可以通过加载sd-webimage 缓存，url可以通过接口获取
    imageView.image = [UIImage imageWithData: [NSData dataWithContentsOfURL: [NSURL URLWithString: @"http://pics.sc.chinaz.com/files/pic/pic9/201601/apic18105.jpg"]]];
    [UIView animateWithDuration: 3 animations:^{
        imageView2.alpha = 0;
        imageView.transform = CGAffineTransformMakeScale(1.2, 1.2);
    } completion:^(BOOL finished) {
        [imageView removeFromSuperview];
        [imageView2 removeFromSuperview];
        
    }];
    

}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
