//
//  AppDelegate.m
//  TapTheBird
//
//  Created by Administrator on 6/6/14.
//  Copyright (c) 2014 OneMinecraftGuy. All rights reserved.
//

#import "AppDelegate.h"
#import <RevMobAds/RevMobAds.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    [RevMobAds startSessionWithAppID:@"5495336dc30ade2c5edf0534"];
    // Override point for customization after application launch.
    UIStoryboard *storyboard;   // StoryBoardの型宣言
    NSString *storyBoardName;  // StoryBoardの名称設定用
    const float version = [[[UIDevice currentDevice] systemVersion] floatValue];
    NSLog(@"%f", version);
    
    // 機種の取得
    NSString *modelname = [ [UIDevice currentDevice] model];
    
    // iPadかどうか判断する
    CGRect r = [[UIScreen mainScreen] bounds];
    if ( ![modelname hasPrefix:@"iPad"] ) {
        if (version<7.5) {
            if(r.size.height == 480){
                NSLog(@"iPhone 4/4S");
                storyBoardName = @"3.5";
            }if (r.size.height == 568){
                NSLog(@"iPhone 5/5S/5C");
                storyBoardName = @"4.0";
            }if (r.size.height == 667){
                NSLog(@"iPhone 6");
                storyBoardName=@"4.7";
            }if (r.size.height == 736) {
                NSLog(@"Bending Machine");
                storyBoardName=@"5.5";
            }
        }else{
        if (r.size.width == 480){
            NSLog(@"iPhone 4/4S");
            storyBoardName = @"3.5";
        }if (r.size.width == 568){
            NSLog(@"iPhone 5/5S/5C");
            storyBoardName = @"4.0";
        }if (r.size.width == 667){
            NSLog(@"iPhone 6");
            storyBoardName=@"4.7";
        }if (r.size.width == 736) {
            NSLog(@"Bending Machine");
            storyBoardName=@"5.5";
            }
        }
    }else{
         NSLog(@"iPad");
        storyBoardName = @"3.5";
    }
    // StoryBoardのインスタンス化
    storyboard = [UIStoryboard storyboardWithName:storyBoardName bundle:nil];
    // 画面の生成
    UIViewController *mainViewController = [storyboard instantiateInitialViewController];
    
    // ルートウィンドウにひっつける
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = mainViewController;
    [self.window makeKeyAndVisible];
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    [RevMobAds session].parallaxMode = RevMobParallaxModeOff;
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
