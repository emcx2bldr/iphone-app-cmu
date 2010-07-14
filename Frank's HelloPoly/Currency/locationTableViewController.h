//
//  locationTableViewController.h
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "currency.h"
#import "pair.h"

@interface locationTableViewController: UITableViewController <UITableViewDelegate, UITableViewDataSource> {
	NSArray *currencyArray;
	NSDictionary *countriesPerContinent;
	pair *selectedPair;
}

@property (nonatomic, retain) NSArray *currencyArray;
@property (nonatomic, retain) NSDictionary *countriesPerContinent;
@property (nonatomic, retain) pair *selectedPair;

-(id) initWithPair: (pair*) oldPair;
-(IBAction) searchButtonPressed;
-(BOOL) pairIsComplete;

@end
