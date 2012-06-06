//
//  AppDelegate.h
//  SpyCam
//
//  Created by Shao-Qian Mah on 2/11/11.
//  Copyright (c) 2011 Renaissance College. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <QTKit/QTKit.h>




@interface AppDelegate : NSObject <NSApplicationDelegate>
{
    IBOutlet QTCaptureView *mCaptureView;
    QTCaptureDeviceInput        *mCaptureDeviceInput;
    QTCaptureSession            *mCaptureSession;

}


@property (assign) IBOutlet NSWindow *window;
- (IBAction)startRecording:(id)sender;
- (IBAction)stopRecording:(id)sender;


@end
