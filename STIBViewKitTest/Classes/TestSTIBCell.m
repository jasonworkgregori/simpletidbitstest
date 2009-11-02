//
//  TestCell.m
//  STIBViewKitTest
//
//  Created by Jason Gregori on 11/1/09.
//  Copyright 2009 Jason Gregori. All rights reserved.
//

#import "TestSTIBCell.h"


@implementation TestSTIBCell
@synthesize label = _label;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])
    {
        self.label.text = @"STIBTableViewCell subclass";
    }
    return self;
}

@end
