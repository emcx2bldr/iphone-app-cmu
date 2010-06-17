//
//  Controller.m
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "Controller.h"

@implementation Controller

- (void) updateInterface {
	
	int sides = polygon.numberOfSides;
	NSLog(@"%d", sides);
	
	
	if (sides == polygon.minimumNumberOfSides || sides ==polygon.maximumNumberOfSides) {
		[numberOfSidesLabel setText: [NSString stringWithFormat: @"%d", sides]];
		[polygonView setNeedsDisplay];
	}
	if (sides <= polygon.minimumNumberOfSides)
	{
		decreaseButton.enabled = NO;
	}
	else if (sides >= polygon.maximumNumberOfSides)
		increaseButton.enabled = NO;
	else
	{
		decreaseButton.enabled = YES;
		increaseButton.enabled = YES;
		[numberOfSidesLabel setText: [NSString stringWithFormat: @"%d", sides]];
		[polygonView setNeedsDisplay];
	}
}

- (void) awakeFromNib{
	[polygon init];
	[self updateInterface];
}

- (IBAction)decrease:(id)sender {
	
	polygon.numberOfSides = polygon.numberOfSides-1;
	[self updateInterface];
}

- (IBAction)increase:(id)sender {
    
	polygon.numberOfSides = polygon.numberOfSides+1;
	[self updateInterface];
}

@end
