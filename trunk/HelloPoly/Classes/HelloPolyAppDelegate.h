//
//  HelloPolyAppDelegate.h
//  HelloPoly
//
//  Created by Devendra Gurjar on 5/25/10.
//  Copyright Carnegie Mellon University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HelloPolyAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end

