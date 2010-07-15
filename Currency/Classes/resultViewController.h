//
//  result.h
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "pair.h"

@interface resultViewController : UIViewController {
	pair *selectedPair;
	IBOutlet UILabel *fromCurrencyLabel;
	IBOutlet UITextField *fromCurrencyQty;
	IBOutlet UILabel *toCurrencyLabel;
	IBOutlet UITextField *toCurrencyQty;
	IBOutlet UIButton *equals; 
}

@property (nonatomic, retain) pair* selectedPair;

-(IBAction) equalsPressed;
-(int) convertCurrencyWithQty: (int) qty AndFactor: (int) fromFactor ToCurrenctWithFactor: (int) toFactor;

@end
