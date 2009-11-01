//
//  STIBViewKitTestAppDelegate.h
//  STIBViewKitTest
//
//  Created by Jason Gregori on 10/27/09.
//  Copyright Jason Gregori 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface STIBViewKitTestAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
