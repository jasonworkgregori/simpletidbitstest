//
//  STMenuKitTestAppDelegate.m
//  STMenuKitTest
//
//  Created by Jason Gregori on 12/1/09.
//  Copyright Jason Gregori 2009. All rights reserved.
//

#import "STMenuKitTestAppDelegate.h"
#import "RootViewController.h"
#import <STMenuKit/STMenuKit.h>

@implementation STMenuKitTestAppDelegate

@synthesize window;
@synthesize navigationController;


#pragma mark -
#pragma mark Application lifecycle

- (void)applicationDidFinishLaunching:(UIApplication *)application
{
    STMenuFormTableViewController   *menu
      = [STMenuFormTableViewController menu];
    menu.title  = @"Menu";
    [menu setPlist:@"MainMenu.plist" andValue:[NSMutableDictionary dictionary]];
    
    // Override point for customization after app launch    
	[navigationController pushViewController:menu
                                    animated:NO];
	[window addSubview:[navigationController view]];
    [window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


#pragma mark -
#pragma mark Memory management

- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}


@end

