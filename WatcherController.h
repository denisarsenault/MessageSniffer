//
//  WatcherController.h
//  Message Sniffer
//
//  Created by Denis Arsenault 3/30/16
//  Copyright (c) 2016 mybrightzone. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WatcherController : NSObject {
	IBOutlet NSWindow *prefsWindow;
    IBOutlet NSTextField *objectText;
    IBOutlet NSTableView *distNotificationList;
    IBOutlet NSTableView *wsNotificationList;
    IBOutlet NSTableView *userInfoList;
	IBOutlet NSSearchField *searchField;
    NSMutableArray *distNotifications;
    NSMutableArray *wsNotifications;
    NSNotification *selectedDistNotification;
    NSNotification *selectedWSNotification;
	NSMutableArray *savedRowHeights;
}
- (IBAction)clearNotifications:(id)sender;
- (IBAction)showPrefs:(id)sender;
- (IBAction)didChangeFilter:(NSSearchField *)sender;
- (IBAction)selectSearchField:(id)sender;
- (void)selectNotification:(NSNotification*)aNotification;
- (void)distNotificationHook:(NSNotification*)aNotification;
- (void)wsNotificationHook:(NSNotification*)aNotification;
@end
