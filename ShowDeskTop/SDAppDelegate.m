//
//  AppDelegate.m
//  ShowDeskTop
//
//  Created by jiajixin on 15/2/14.
//  Copyright (c) 2015年 jiajixin. All rights reserved.
//

#import "SDAppDelegate.h"

@implementation SDAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [self setUpStatusItem];
    [JRLoginItemUtil addCurrentApplicatonToLoginItems];
}

- (void)setUpStatusItem {
    _statusItem = [[NSStatusBar systemStatusBar] statusItemWithLength:NSVariableStatusItemLength];
    [_statusItem setImage:[NSImage imageNamed:@"StatusIcon"]];
    [_statusItem setHighlightMode:YES];
    [_statusItem setAction:@selector(onStatusItemClicked:)];
    [_statusItem setTarget:self];
}

- (void)onStatusItemClicked:(id)sender {
    [JRKeyboardShortcutUtil minimizeAllWindows];
}

@end
