//
//  gravityAppDelegate.m
//  gravity
//
//  Created by Devendra Gurjar on 6/13/10.
//  Copyright Carnegie Mellon University 2010. All rights reserved.
//

#import "gravityAppDelegate.h"

@implementation gravityAppDelegate

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
