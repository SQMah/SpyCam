//
//  AppController.h
//  SpyCam 2
//
//  Created by Shao Qian MAH on 1/7/12.
//  Copyright (c) 2012 SpySHAMBS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AppController : NSObject
{
    //NSWindow
    IBOutlet NSWindow *welcomeWindow;
    IBOutlet NSWindow *registrationError;
    IBOutlet NSWindow *registrationSuccess;
    //NSTextField
    IBOutlet NSTextField *registrationField;
}

@property (assign) IBOutlet NSWindow *registrationSheet;

- (IBAction)showRegistrationSheet:(id)sender;
- (IBAction)closeRegistrationSheet:(id)sender;
- (IBAction)registerButton:(id)sender;
- (IBAction)retryButton:(id)sender;

@end
