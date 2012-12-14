//
//  SHAppDelegate.m
//  MacApp
//
//  Created by Steven Hepting on 12/13/12.
//  Copyright (c) 2012 StevenHepting. All rights reserved.
//

#import "SHAppDelegate.h"

@implementation SHAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
    [self firstCall];
    [self otherCall];
}

- (void)firstCall
{
    NSLog(@"First call.");
}

- (void)otherCall
{
    NSLog(@"Other call");
}

@end
