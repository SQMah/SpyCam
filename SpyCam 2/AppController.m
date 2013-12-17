//
//  AppController.m
//  SpyCam 2
//
//  Created by Shao Qian MAH on 1/7/12.
//  Copyright (c) 2012 SpySHAMBS. All rights reserved.
//

#import "AppController.h"

@implementation AppController
@synthesize registrationSheet = _registrationSheet;

- (IBAction)showRegistrationSheet:(id)sender
{
    if (!_registrationSheet)
        [NSBundle loadNibNamed:@"RegistrationSheet" owner:self];
    [NSApp beginSheet:self.registrationSheet modalForWindow:[[NSApp delegate] window] modalDelegate:self didEndSelector:NULL contextInfo:NULL];
}

- (IBAction)closeRegistrationSheet:(id)sender
{
    [NSApp endSheet:self.registrationSheet];
    [self.registrationSheet close];
    self.registrationSheet = nil;
    [welcomeWindow close];
    [registrationError makeKeyAndOrderFront:self];
}

- (IBAction)registerButton:(id)sender
{
    if ([[registrationField stringValue] isEqualToString:@"giblethescooba"])
    {
        [NSApp endSheet:self.registrationSheet];
        [self.registrationSheet close];
        self.registrationSheet = nil;
        [welcomeWindow close];
        [registrationSuccess makeKeyAndOrderFront:self];
    }
    else
    {
        [NSApp endSheet:self.registrationSheet];
        [self.registrationSheet close];
        self.registrationSheet = nil;
        [welcomeWindow close];
        [registrationError makeKeyAndOrderFront:self];
    }
}

- (IBAction)retryButton:(id)sender
{
    if (!_registrationSheet)
        [NSBundle loadNibNamed:@"RegistrationSheet" owner:self];
    [NSApp beginSheet:self.registrationSheet modalForWindow:[[NSApp delegate] window] modalDelegate:self didEndSelector:NULL contextInfo:NULL];
    
    [registrationError close];
}

@end
