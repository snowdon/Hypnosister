//
//  HypnosisterAppDelegate.h
//  Hypnosister
//
//  Created by  Chuns on 11-8-29.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class HynosisView;

@interface HypnosisterAppDelegate : NSObject <UIApplicationDelegate> {
    HynosisView *view;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@end
