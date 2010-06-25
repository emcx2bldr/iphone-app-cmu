//
//  middleViewController.h
//  gravity
//
//  Created by Devendra Gurjar on 6/13/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "movableObjectModel.h"

@interface middleViewController : UIViewController {
	movableObjectModel *projectile;
	CGPoint projectile_location;
	IBOutlet UIView *middleView;
	IBOutlet UIView *dot;
}

-(void) updateLocationWithX:(int)x Y:(int) y;

@end
