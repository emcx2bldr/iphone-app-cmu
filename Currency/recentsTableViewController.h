//
//  recentsTableViewController.h
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface recentsTableViewController : UITableViewController <UITableViewDelegate, UITableViewDataSource>{
	NSArray *recents;
}

-(IBAction) editButtonPressed;

@end
