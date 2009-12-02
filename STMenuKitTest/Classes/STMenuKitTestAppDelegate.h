//
//  STMenuKitTestAppDelegate.h
//  STMenuKitTest
//
//  Created by Jason Gregori on 12/1/09.
//  Copyright Jason Gregori 2009. All rights reserved.
//

@interface STMenuKitTestAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

