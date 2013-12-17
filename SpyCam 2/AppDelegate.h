//
//  AppDelegate.h
//  SpyCam 2
//
//  Created by Shao Qian MAH on 27/6/12.
//  Copyright (c) 2012 SpySHAMBS. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    //NSWindow
    IBOutlet NSWindow *welcomeWindow;
    IBOutlet NSWindow *registrationWindow;
    IBOutlet NSWindow *errorWindow;
    IBOutlet NSWindow *alphaTestersWindow;
    IBOutlet NSWindow *mainWindow;
    //NSButton
    IBOutlet NSButton *registeredCheckbox;

}

@property (assign) IBOutlet NSWindow *window;


@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;

- (IBAction)saveAction:(id)sender;
- (IBAction)alphaTesters:(id)sender;
- (IBAction)backToErrorWindow:(id)sender;



@end
