//
//  CurrencyAppDelegate.h
//  Currency
//
//  Created by Devendra Gurjar on 6/30/10.
//  Copyright Carnegie Mellon University 2010. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CurrencyAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
