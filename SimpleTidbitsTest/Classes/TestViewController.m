//
//  TestViewController.m
//  SimpleTidbitsTest
//
//  Created by Jason Gregori on 10/10/09.
//  Copyright 2009 Jason Gregori. All rights reserved.
//

#import "TestViewController.h"


@implementation TestViewController
@synthesize imageView1, imageView2, textField, loadingButton;

/*
 // The designated initializer.  Override if you create the controller programmatically and want to perform customization that is not appropriate for viewDidLoad.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

- (void)viewWillAppear:(BOOL)animated
{
	[super viewWillAppear:animated];
	[[STNetworkIndicator sharedNetworkIndicator] setCurrentNetworkNamespace:self.title];
}

// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{	
    [super viewDidLoad];
}


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


- (void)dealloc
{
	[imageView1 release];
	[imageView2 release];
	[textField release];
	
    [super dealloc];
}


- (IBAction)refresh:(id)sender
{
	imageView1.url	= textField.text;
	imageView2.url	= textField.text;
	[textField resignFirstResponder];
}

- (IBAction)setLoading:(id)sender
{
	if (loading)
	{
		[[STNetworkIndicator sharedNetworkIndicator] decrementNetworkUsageForNamespace:self.title];
		loading		= NO;
		[loadingButton setTitle:@"Start Loading"
					   forState:UIControlStateNormal];
	}
	else
	{
		[[STNetworkIndicator sharedNetworkIndicator] incrementNetworkUsageForNamespace:self.title];
		loading		= YES;
		[loadingButton setTitle:@"Stop Loading"
					   forState:UIControlStateNormal];
	}

}

@end
