//
//  PolygonShape.m
//  Assignment1B
//
//  Created by Jifu Zhou on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape

@synthesize numberOfSides;
@synthesize maximumNumberOfSides;
@synthesize minimumNumberOfSides;

- (id)init{
	return [self initWithNumberOfSides:5 minimumNumberOfSides:3 
				  maximumNumberOfSides:10];
}
	
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides: (int)min
maximumNumberOfSides:(int)max{
	[self init];
	[self setMaximumNumberOfSides:max];
	[self setMinimumNumberOfSides:min];
	[self setNumberOfSides:sides];

	return self;
	
}

- (void)setNumberOfSides:(int)value{
	if (value <= maximumNumberOfSides && value >= minimumNumberOfSides){
		numberOfSides = value;
	}
	else if (value > maximumNumberOfSides){
		NSLog(@"Invalid number of sides: %d is greater than the maximum of %d allowed"
			  , value, maximumNumberOfSides);
	}
	else {
		NSLog(@"Invalid number of sides: %d is less than the minimum of %d allowed",
			  value, minimumNumberOfSides);
	}
}
	
- (void)setMinimumNumberOfSides:(int)minsides{
	if (minsides>2) {
		minimumNumberOfSides = minsides;
	}
}
	
- (void)setMaximumNumberOfSides:(int)maxsides{
	if (maxsides<12) {
		maximumNumberOfSides = maxsides;
	}
}
	

	
	
- (float)angleInDegrees{
		return (float)((numberOfSides - 2)*180/numberOfSides);		
}
	
- (float)angleInRadians{
		return (float)((numberOfSides - 2)*M_PI/numberOfSides);
}
	
- (NSString *)name
{
	NSString *name;
	if (numberOfSides == 3) {
		name = @"Triangle";
	}
	else if (numberOfSides == 4){
		name = @"Square";
	}
	else {
		name = @"%d-sided polygon",numberOfSides;
	}
	
	return name;
}
	

- (void)description {
		NSLog(@"Hello I am a %@ with angle of %h (%h radians)",
				[self name], [self angleInDegrees], [self angleInRadians]);
}
	
- (void)dealloc{
		[super dealloc];
		
		NSLog(@"dealloc is called!");
}
	
@end
