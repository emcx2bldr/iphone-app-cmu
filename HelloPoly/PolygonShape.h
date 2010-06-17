//
//  PolygonShape.h
//  HelloPoly
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject {
	int numberOfSides, minimumNumberOfSides, maximumNumberOfSides;
}

@property () int numberOfSides;
@property () int minimumNumberOfSides;
@property () int maximumNumberOfSides;
@property (readonly) float angleInDegrees;
@property (readonly) float angleInRadians;
@property (readonly) NSString* name;

+ (NSArray *)pointsForPolygonInRect:(CGRect)rect numberOfSides:(int)numberOfSides;
- (id)init;
- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides:(int)min maximumNumberOfSides:(int)max;
- (void)description;
- (void)dealloc;

@end
