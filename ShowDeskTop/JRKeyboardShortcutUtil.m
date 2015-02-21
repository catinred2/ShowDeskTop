//
//  JRKeyboardShortcutUtil.m
//  ShowDeskTop
//
//  Created by jiajixin on 15/2/21.
//  Copyright (c) 2015年 jiajixin. All rights reserved.
//

#import "JRKeyboardShortcutUtil.h"

@implementation JRKeyboardShortcutUtil

+ (void)minimizeAllWindows{
    CGEventSourceRef src = CGEventSourceCreate(kCGEventSourceStateHIDSystemState);
    
    CGEventRef cmdDown = CGEventCreateKeyboardEvent(src, kVK_Command, true);
    CGEventRef cmdUp = CGEventCreateKeyboardEvent(src, kVK_Command, false);
    CGEventSetFlags(cmdDown, kCGEventFlagMaskCommand);
    CGEventSetFlags(cmdUp, kCGEventFlagMaskCommand);
    
    CGEventRef optionDown = CGEventCreateKeyboardEvent(src, kVK_Option, true);
    CGEventRef optionUp = CGEventCreateKeyboardEvent(src, kVK_Option, false);
    CGEventSetFlags(optionDown, kCGEventFlagMaskAlternate);
    CGEventSetFlags(optionUp, kCGEventFlagMaskAlternate);
    
    CGEventRef hDown = CGEventCreateKeyboardEvent(src, kVK_ANSI_H, true);
    CGEventRef hUp = CGEventCreateKeyboardEvent(src, kVK_ANSI_H, false);
    CGEventSetFlags(hDown, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    CGEventSetFlags(hUp, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    
    CGEventRef mDown = CGEventCreateKeyboardEvent(src, kVK_ANSI_M, true);
    CGEventRef mUp = CGEventCreateKeyboardEvent(src, kVK_ANSI_M, false);
    CGEventSetFlags(mDown, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    CGEventSetFlags(mUp, kCGEventFlagMaskCommand ^ kCGEventFlagMaskAlternate);
    
    CGEventTapLocation loc = kCGHIDEventTap;
    CGEventPost(loc, optionDown);
    CGEventPost(loc, cmdDown);
    CGEventPost(loc, hDown);
    CGEventPost(loc, mDown);
    
    CGEventPost(loc, mUp);
    CGEventPost(loc, hUp);
    CGEventPost(loc, optionUp);
    CGEventPost(loc, cmdUp);
    
    CFRelease(cmdDown);
    CFRelease(cmdUp);
    CFRelease(optionDown);
    CFRelease(optionUp);
    CFRelease(hDown);
    CFRelease(hUp);
    CFRelease(mDown);
    CFRelease(mUp);
    CFRelease(src);
}

@end
