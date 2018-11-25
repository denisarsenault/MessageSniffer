//
//  PreferencesController.m
//  Message Sniffer
//
//  Created by Denis Arsenault 3/30/16
//  Copyright (c) 2016 mybrightzone. All rights reserved.
//

#import "PreferencesController.h"
#import "Globals.h"

@implementation PreferencesController

- (IBAction)changeProcessActivation:(id)sender
{
    [[NSUserDefaults standardUserDefaults] setBool:[sender state]
                                            forKey:kHideProcessSwitchNotificationPref];
}

- (void)awakeFromNib
{
    [processActivationCheck setState:
        [[NSUserDefaults standardUserDefaults] boolForKey:kHideProcessSwitchNotificationPref]];
}

@end
