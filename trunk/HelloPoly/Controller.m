//
//  Controller.m
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (IBAction)decrease:(id)sender {
	
	NSInteger sides = [[numberOfSidesLabel text] integerValue];
	
	if (sides > 3) {
		[numberOfSidesLabel setText: [NSString stringWithFormat: @"%d", sides-1]];
	}
}

- (IBAction)increase:(id)sender {
    
	 [numberOfSidesLabel setText: [NSString stringWithFormat: @"%d", [[numberOfSidesLabel text] integerValue]+1]];
}

@end
