//
//  IPCheckerAppDelegate.h
//  IPChecker
//
//  Created by Konrad Kierys on 23/07/2011.
//  Copyright 2011 kierys.pl. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface IPCheckerAppDelegate : NSObject <NSApplicationDelegate, NSMenuDelegate> {
	NSStatusItem *statusItem;
	NSMenuItem *menuItem;
	NSMenu *menu;

	NSThread *thread;
}

-(void)activateStatusMenu;
-(void)copyIPAddress:(id)sender;
-(void)quit:(id)sender;

@end
