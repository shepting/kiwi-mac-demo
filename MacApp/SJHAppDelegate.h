//
//  SJHAppDelegate.h
//  MacApp
//
//  Created by Steven Hepting on 5/24/14.
//  Copyright (c) 2014 Steven Hepting. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface SJHAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;


- (void)firstCall;
- (void)otherCall;

@end
