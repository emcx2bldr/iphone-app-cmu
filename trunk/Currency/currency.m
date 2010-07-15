//
//  currency.m
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import "currency.h"


@implementation currency

@synthesize name;
@synthesize continent;
@synthesize conversionFactor;
@synthesize flag;

-(id) initWithName:(NSString *)nm Continent:(NSString *)cont ConversionFactor:(int)factor{
	if (self = [super init]) {
		self.name = nm;
		self.continent = cont;
		self.conversionFactor = factor;
		self.flag = nil;
	}
	return self;
}

-(id) initWithDictionary:(NSDictionary *)data{
	self.name = (NSString *) [data objectForKey: @"name"];
	self.continent = (NSString *) [data objectForKey: @"continent"];
	self.conversionFactor = (int) [data objectForKey: @"conversionFactor"];
	self.flag = nil;
	return self;
}

-(void) dealloc{
	[super dealloc];
	[name release];
	[continent release];
	[flag release];
}

@end
