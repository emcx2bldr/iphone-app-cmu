//
//  movableObjectModel.h
//  gravity
//
//  Created by Devendra Gurjar on 6/13/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface movableObjectModel : NSObject {
	int x, y, mass;
}

@property int x;
@property int y;
@property int mass;

@end
