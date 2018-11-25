//
//  PreferencesController.h
//  Message Sniffer
//
//  Created by Denis Arsenault 3/30/16
//  Copyright (c) 2016 mybrightzone. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PreferencesController : NSObject
{
    IBOutlet NSButton *processActivationCheck;
}
- (IBAction)changeProcessActivation:(id)sender;
@end
