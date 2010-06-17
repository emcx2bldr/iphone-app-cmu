//
//  HelloPolyAppDelegate.m
//  HelloPoly
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright Carnegie Mellon University 2010. All rights reserved.
//

#import "HelloPolyAppDelegate.h"

@implementation HelloPolyAppDelegate

@synthesize window;


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {    

    // Override point for customization after application launch
	
    [window makeKeyAndVisible];
	
	return YES;
}

- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
