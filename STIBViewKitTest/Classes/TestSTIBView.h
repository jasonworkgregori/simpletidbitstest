//
//  TestView.h
//  STIBViewKitTest
//
//  Created by Jason Gregori on 10/27/09.
//  Copyright 2009 Jason Gregori. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <STIBViewKit/STIBViewKit.h>

@interface TestSTIBView : STIBView
{
    UILabel     *_label;
}
@property (nonatomic, retain) IBOutlet UILabel *label;

@end
