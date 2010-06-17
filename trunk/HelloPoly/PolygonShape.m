//
//  PolygonShape.m
//  HelloPoly
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "PolygonShape.h"


@implementation PolygonShape

@synthesize numberOfSides;
@synthesize minimumNumberOfSides;
@synthesize maximumNumberOfSides;

+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides { 
	CGPoint center = CGPointMake(rect.size.width / 2.0, rect.size.height / 2.0); 
	float radius = 0.9 * center.x; 
	NSMutableArray *result = [NSMutableArray array];
	float angle = (2.0 * M_PI) / numberOfSides; 
	float exteriorAngle = M_PI - angle; 
	float rotationDelta = angle - (0.5 * exteriorAngle);
	for (int currentAngle = 0; currentAngle < numberOfSides; currentAngle++) { 
		float newAngle = (angle * currentAngle) - rotationDelta; 
		float curX = cos(newAngle) * radius;
		float curY = sin(newAngle) * radius;
		[result addObject:[NSValue valueWithCGPoint:CGPointMake(center.x + curX, center.y + curY)]];
	} 
	return result;
}

- (id) init{
	return [self initWithNumberOfSides: 3 minimumNumberOfSides: 3 maximumNumberOfSides: 29];
}

- (id) initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max{
	[self setMaximumNumberOfSides:max];
	[self setMinimumNumberOfSides:min];
	[self setNumberOfSides:sides];
	return self;
}

- (void) description{
	NSLog(@"Hello I am a %d-sided polygon (aka a %@) with angles of %h degrees (%h radians).", [self numberOfSides], [self name], [self angleInDegrees], [self angleInRadians]);
}

- (void) setNumberOfSides:(int)sides
{
		numberOfSides = sides;
}

- (void) setMinimumNumberOfSides:(int)minsides
{
	if (minsides>2) {
		minimumNumberOfSides = minsides;
	}
}

- (void) setMaximumNumberOfSides:(NSInteger)maxsides
{
	if (maxsides<30) {
		maximumNumberOfSides = maxsides;
	}
}


- (float) angleInDegrees
{
	return (numberOfSides-2)*180/numberOfSides;
}

- (float) angleInRadians;
{
	return (numberOfSides-2)*M_PI/numberOfSides;
}

- (NSString *) name;
{
	NSString *name;
	
	switch (numberOfSides) {
		case 3:
			name = @"Triangle";
			break;
		case 4:
			name = @"Square";
			break;
		case 5:
			name = @"Pentagon";
			break;
		case 6:
			name = @"Hexagon";
			break;
		case 7:
			name = @"Heptagon";
			break;
		case 8:
			name = @"Octagon";
			break;
		case 9:
			name = @"Enneagon";
			break;
		case 10:
			name = @"decagon";
			break;
		case 11:
			name = @"Hendecagon";
			break;
		case 12:
			name = @"Dodecagon";
			break;
		default:
			name = nil;
			break;
	}
	
	return name;
}

-(void) dealloc{
	[super dealloc];
}

@end
