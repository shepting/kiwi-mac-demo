//
//  SJHAppDelegate.m
//  MacApp
//
//  Created by Steven Hepting on 5/24/14.
//  Copyright (c) 2014 Steven Hepting. All rights reserved.
//

#import "SJHAppDelegate.h"

@implementation SJHAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    NSLog(@"Running.");

    [self firstCall];
//    [self otherCall]; // Uncomment to make tests pass
}

- (void)firstCall
{
    NSLog(@"First");
}

- (void)otherCall
{
    NSLog(@"Other");

}

@end
