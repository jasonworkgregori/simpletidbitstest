//
//  TestCell.h
//  STIBViewKitTest
//
//  Created by Jason Gregori on 11/1/09.
//  Copyright 2009 Jason Gregori. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <STIBViewKit/STIBViewKit.h>

@interface TestSTIBCell : STIBTableViewCell
{
    UILabel     *_label;
}
@property (nonatomic, assign) IBOutlet UILabel *label;

@end
