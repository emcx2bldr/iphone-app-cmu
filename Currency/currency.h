//
//  currency.h
//  Currency
//
//  Created by Devendra Gurjar on 7/9/10.
//  Copyright 2010 Carnegie Mellon University. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface currency : NSObject {
	NSString *name;
	NSString *continent;
	float_t  conversionFactor;
	UIImage *flag;
}

@property (retain, nonatomic) NSString *name;
@property (retain, nonatomic) NSString *continent;
@property (nonatomic) float_t conversionFactor;
@property (retain, nonatomic) UIImage *flag;

-(id) initWithName:(NSString *) nm Continent:(NSString*) cont ConversionFactor: (int) factor;
-(id) initWithDictionary: (NSDictionary *) data;

@end
