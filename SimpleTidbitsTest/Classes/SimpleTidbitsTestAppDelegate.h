//
//  SimpleTidbitsTestAppDelegate.h
//  SimpleTidbitsTest
//
//  Created by Jason Gregori on 10/10/09.
//  Copyright Jason Gregori 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTidbitsTestAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
