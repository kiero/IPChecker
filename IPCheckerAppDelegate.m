//
//  IPCheckerAppDelegate.m
//  IPChecker
//
//  Created by Konrad Kierys on 23/07/2011.
//  Copyright 2011 kierys.pl. All rights reserved.
//

#import "IPCheckerAppDelegate.h"

@implementation IPCheckerAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	// Insert code here to initialize your application 
}

// Setting up status item and menu for it
- (void)activateStatusMenu {
	// Creating menu items
	menuItem = [[NSMenuItem alloc] initWithTitle:@"Public IP address" action:@selector(copyIPAddress:) keyEquivalent:@""];
	NSMenuItem *separator = [NSMenuItem separatorItem];
	NSMenuItem *menuItem2 = [[NSMenuItem alloc] initWithTitle:@"Quit IP Checker" action:@selector(quit:) keyEquivalent:@"q"];
	
	// Creating menu and inserting menu items into it
	menu = [[NSMenu alloc] initWithTitle:@"Menu"];
	[menu setAutoenablesItems:NO];
	[menu insertItem:menuItem atIndex:0];
	[menu insertItem:separator atIndex:1];
	[menu insertItem:menuItem2 atIndex:2];
	[menu setDelegate:self];
	
	// Creating status item
	NSStatusBar *systemBar = [NSStatusBar systemStatusBar];
    statusItem = [systemBar statusItemWithLength:NSVariableStatusItemLength];
    [statusItem retain];
	
    [statusItem setTitle: NSLocalizedString(@"IPChecker",@"")];
    [statusItem setHighlightMode:YES];
    [statusItem setMenu:menu];
}

@end
