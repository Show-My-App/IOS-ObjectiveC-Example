//
//  ViewController.m
//  show-my-app
//
//  Created by JFC idéMobi on 19/05/2019.
//  Copyright © 2019 idéMobi. All rights reserved.
//

#import "ViewController.h"
#import "ShowMyAppTestController.h"
#import "ShowMyAppViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(ShowMyApp*) FormAnalyze
{
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    [tShowMyAppInstance setAppName:[appNameTextField text]];
    [tShowMyAppInstance setDesign:[designSegmentedControl selectedSegmentIndex]];
    [tShowMyAppInstance setIOS_iPhone_BundleID:[iPhoneTextField text]];
    [tShowMyAppInstance setIOS_iPad_BundleID:[iPadTextField text]];
    [tShowMyAppInstance setMacOS_BundleID:[macOSTextField text]];
    [tShowMyAppInstance setTvOS_BundleID:[tvOSTextField text]];
    [tShowMyAppInstance setAndroid_BundleID:[androidTextField text]];
    [tShowMyAppInstance setAndroid_Tablet_BundleID:[androidTabletTextField text]];
    [tShowMyAppInstance setWindows_BundleID:[windowsTextField text]];
    [tShowMyAppInstance setWindows_Phone_BundleID:[windowsPhoneTextField text]];
    [tShowMyAppInstance setSteam_BundleID:[windowsPhoneTextField text]];
    [tShowMyAppInstance setTiny:[tinySwith isOn]];
    return tShowMyAppInstance;
}

-(IBAction)ShareTestController:(id)sSender {
    ShowMyAppTestController *tShowMyAppTestController = [[ShowMyAppTestController alloc] initWithNibName:@"ShowMyAppTestController" bundle:[NSBundle mainBundle]];
    [tShowMyAppTestController Install:[self FormAnalyze]];
    [tShowMyAppTestController setTitle:@"Test"];
    [[self navigationController] pushViewController:tShowMyAppTestController animated:YES];
}

-(IBAction)ShareViewController:(id)sSender {
    ShowMyAppViewController *tShowMyAppViewController = [[ShowMyAppViewController alloc] initWithNibName:@"ShowMyAppViewController" bundle:[NSBundle mainBundle]];
    [tShowMyAppViewController Install:[self FormAnalyze]];
    [tShowMyAppViewController setTitle:@"In App"];
    [[self navigationController] presentViewController:tShowMyAppViewController animated:YES completion:nil];
}

-(IBAction)FillWithExample:(id)sSender {
    [appNameTextField setText:@"Shazam"];
    [designSegmentedControl setSelectedSegmentIndex:0];
    [iPhoneTextField setText:@"284993459"];
    [iPadTextField setText:@"284993459"];
    [macOSTextField setText:@""];
    [tvOSTextField setText:@""];
    [androidTextField setText:@"com.shazam.android"];
    [androidTabletTextField setText:@"com.shazam.android"];
    [windowsTextField setText:@""];
    [windowsPhoneTextField setText:@""];
    [steamTextField setText:@""];
}
@end
