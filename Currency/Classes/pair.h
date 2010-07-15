//
//  pair.h
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "currency.h"

@interface pair : NSObject {
	NSString *pairName;
	currency *fromCurrency;
	currency *toCurrency;
}

@property (nonatomic, retain) currency *fromCurrency;
@property (nonatomic, retain) currency *toCurrency;

-(id) initWithFromCurrency: (currency *) from ToCurrency: (currency *) to;

@end
