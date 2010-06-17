//
//  PolygonShape.h
//  Assignment1B
//
//  Created by Jifu Zhou on 6/17/10.
//  Copyright 2010 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface PolygonShape : NSObject {
	
	int numberOfSides, maximumNumberOfSides, minimumNumberOfSides;
	
}

@property () int numberOfSides;
@property () int maximumNumberOfSides;
@property () int minimumNumberOfSides;
@property (readonly)float angleInDegrees;
@property (readonly)float angleInRadians;
@property (readonly) NSString *name; 

- (id)initWithNumberOfSides:(int)sides minimumNumberOfSides: (int)min
	  maximumNumberOfSides:(int)max;
- (id)init;
- (void)dealloc;
- (void)description;


@end
