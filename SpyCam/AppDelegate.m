//
//  AppDelegate.m
//  SpyCam
//
//  Created by Shao-Qian Mah on 2/11/11.
//  Copyright (c) 2011 Renaissance College. All rights reserved.
//

#import "AppDelegate.h"


@implementation AppDelegate

- (IBAction)startRecording:(id)sender
{
    mCaptureSession = [[QTCaptureSession alloc] init];
    BOOL success = NO;
    NSError *error;
    QTCaptureDevice *device = [QTCaptureDevice defaultInputDeviceWithMediaType:QTMediaTypeVideo];
    if (device) {
        success = [device open:&error];
        if (!success) {
        }
        mCaptureDeviceInput = [[QTCaptureDeviceInput alloc] initWithDevice:device];
        success = [mCaptureSession addInput:mCaptureDeviceInput error:&error];
        if (!success) {
            // Handle error
        }
        
        [mCaptureView setCaptureSession:mCaptureSession];
        [mCaptureSession startRunning];
        

    }


}
- (IBAction)stopRecording:(id)sender
{
    [mCaptureSession stopRunning];
    [[mCaptureDeviceInput device] close];

}

@synthesize window = _window;



@end
