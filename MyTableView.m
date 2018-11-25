//
//  MyTableView.m
//  Message Sniffer
//
//  Created by Denis Arsenault 3/30/16
//  Copyright (c) 2016 mybrightzone. All rights reserved.
//

#import "MyTableView.h"

@implementation MyTableView

- (NSDragOperation)draggingSourceOperationMaskForLocal:(BOOL)isLocal
{
    if (isLocal) {
        return NSDragOperationMove;
    } else {
        return NSDragOperationCopy;
    }
}

- (IBAction)copy:(id __unused)sender
{
    NSPasteboard *pb = [NSPasteboard generalPasteboard];
	[[self dataSource] tableView:self writeRowsWithIndexes:[self selectedRowIndexes] toPasteboard:pb];
}

- (BOOL)becomeFirstResponder
{
    NSNotification *pseudoNotification = [NSNotification
                    notificationWithName:NSTableViewSelectionDidChangeNotification
                                  object:self];
    [[NSNotificationCenter defaultCenter] postNotification:pseudoNotification];
    return [super becomeFirstResponder];
}

@end
