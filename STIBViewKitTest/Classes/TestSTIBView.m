//
//  TestView.m
//  STIBViewKitTest
//
//  Created by Jason Gregori on 10/27/09.
//  Copyright 2009 Jason Gregori. All rights reserved.
//

#import "TestSTIBView.h"


@implementation TestSTIBView
@synthesize label = _label;

- (id)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame])
    {
        self.label.text = @"Initialized!";
    }
    
    return self;
}

- (void)dealloc
{
    [_label release];
    
    [super dealloc];
}


@end
