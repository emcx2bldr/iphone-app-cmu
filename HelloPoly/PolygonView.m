//
//  PolygonView.m
//  HelloPoly
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "PolygonView.h"


@implementation PolygonView


- (id)initWithFrame:(CGRect)frame {
    if ((self = [super initWithFrame:frame])) {
        // Initialization code
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
	
	CGContextRef context = UIGraphicsGetCurrentContext();
	CGContextBeginPath(context);
	NSArray *points = [PolygonShape pointsForPolygonInRect: [self frame] numberOfSides:polygon.numberOfSides];
	CGPoint pt = [[points objectAtIndex:0] CGPointValue];
	CGContextMoveToPoint(context, pt.x, pt.y);
	for (int currentPoint = 1; currentPoint < polygon.numberOfSides; currentPoint++) {
		pt = [[points objectAtIndex:currentPoint] CGPointValue];
		CGContextAddLineToPoint(context, pt.x, pt.y);
	}
	
	CGContextClosePath(context);
	
	[[UIColor blackColor] setStroke];
	[[UIColor blueColor] setFill];
	CGContextDrawPath(context, kCGPathFillStroke);
	
}

- (void)dealloc {
    [super dealloc];
}


@end
