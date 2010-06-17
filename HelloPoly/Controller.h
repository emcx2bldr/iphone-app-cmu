//
//  Controller.h
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>
#import "PolygonShape.h"
#import "PolygonView.h"

@interface Controller : NSObject {
    IBOutlet UIButton *decreaseButton;
    IBOutlet UIButton *increaseButton;
    IBOutlet UILabel *numberOfSidesLabel;
	IBOutlet PolygonShape *polygon;
	IBOutlet PolygonView *polygonView;
}
- (IBAction)decrease:(id)sender;
- (IBAction)increase:(id)sender;
@end
