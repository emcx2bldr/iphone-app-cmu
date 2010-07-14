//
//  pair.m
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "pair.h"


@implementation pair

@synthesize fromCurrency;
@synthesize toCurrency;

-(id) initWithFromCurrency: (currency *) from ToCurrency: (currency *) to{
	[self init];
	self.toCurrency = to;
	self.fromCurrency = from;
}

-(void) dealloc{
	[super dealloc];
	[fromCurrency release];
	[toCurrency release];
}

@end
