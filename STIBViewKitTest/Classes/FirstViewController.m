//
//  FirstViewController.m
//  STIBViewKitTest
//
//  Created by Jason Gregori on 10/27/09.
//  Copyright Jason Gregori 2009. All rights reserved.
//

#import "FirstViewController.h"

#import "TestSTIBView.h"

@implementation FirstViewController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/


// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
    [super loadView];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    TestSTIBView    *tv1    = [[TestSTIBView new] autorelease];
    tv1.label.text      = @"Made from an STIBView";
    tv1.center  = CGPointMake(160, 300);
    [self.view addSubview:tv1];
    
    UIView      *tv2        = [STIBView st_IBViewForNibNamed:@"TestUIView"];
    tv2.center  = CGPointMake(160, 110);
    [self.view addSubview:tv2];
    
}


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
