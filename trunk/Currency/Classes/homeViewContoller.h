//
//  home.h
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface home : UIViewController {
	IBOutlet UIButton *update;
	IBOutlet UIButton *start;
}

-(IBAction) updateButtonPressed;
-(IBAction) startButtonPressed;

@end
