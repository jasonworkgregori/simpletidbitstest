//
//  TestViewController.h
//  SimpleTidbitsTest
//
//  Created by Jason Gregori on 10/10/09.
//  Copyright 2009 Jason Gregori. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SimpleTidbits/SimpleTidbits.h>


@interface TestViewController : UIViewController
{
	BOOL		loading;
	
	STImageView	*imageView1;
	STImageView	*imageView2;
	UITextField	*textField;
	UIButton	*loadingButton;
}

- (IBAction)refresh:(id)sender;
- (IBAction)setLoading:(id)sender;

@property (nonatomic, retain) IBOutlet STImageView *imageView1;
@property (nonatomic, retain) IBOutlet STImageView *imageView2;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UIButton *loadingButton;

@end
