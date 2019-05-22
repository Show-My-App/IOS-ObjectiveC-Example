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
-(IBAction)ShareTestController:(id)sSender {
    ShowMyAppTestController *tShowMyAppTestController = [[ShowMyAppTestController alloc] initWithNibName:@"ShowMyAppTestController" bundle:[NSBundle mainBundle]];
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    [tShowMyAppInstance setAppName:[appNameTextField text]];
    switch ( [designSegmentedControl selectedSegmentIndex]) {
        case 0:
            [tShowMyAppInstance setDesign:@"a"];
            break;
        case 1:
            [tShowMyAppInstance setDesign:@"b"];
            break;
        case 2:
            [tShowMyAppInstance setDesign:@"c"];
            break;
        case 3:
            [tShowMyAppInstance setDesign:@"d"];
            break;
        default:
            [tShowMyAppInstance setDesign:@"a"];
            break;
    }
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
    [tShowMyAppTestController Install:tShowMyAppInstance];
    
    [tShowMyAppTestController setTitle:@"Test"];
    [[self navigationController] pushViewController:tShowMyAppTestController animated:YES];
//    [self presentViewController:tShowMyAppTestController animated:NO completion:^{
//        [tShowMyAppTestController Install:tShowMyAppInstance];
//    }];
}

-(IBAction)ShareViewController:(id)sSender {
    ShowMyAppViewController *tShowMyAppViewController = [[ShowMyAppViewController alloc] initWithNibName:@"ShowMyAppViewController" bundle:[NSBundle mainBundle]];
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    [tShowMyAppInstance setAppName:[appNameTextField text]];
    switch ( [designSegmentedControl selectedSegmentIndex]) {
        case 0:
            [tShowMyAppInstance setDesign:@"a"];
            break;
        case 1:
            [tShowMyAppInstance setDesign:@"b"];
            break;
        case 2:
            [tShowMyAppInstance setDesign:@"c"];
            break;
        case 3:
            [tShowMyAppInstance setDesign:@"d"];
            break;
        default:
            [tShowMyAppInstance setDesign:@"a"];
            break;
    }
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
    [tShowMyAppViewController Install:tShowMyAppInstance];
    
    [tShowMyAppViewController setTitle:@"In App"];
//    [[self navigationController] pushViewController:tShowMyAppViewController animated:YES];
    [[self navigationController] presentViewController:tShowMyAppViewController animated:YES completion:nil];
//    [self presentViewController:tShowMyAppViewController animated:NO completion:^{
//        [tShowMyAppViewController Install:tShowMyAppInstance];
//    }];
}
-(IBAction)FillWithExample:(id)sSender {
    [appNameTextField setText:@"Shazam"]; // &n=xxxxx
    [designSegmentedControl setSelectedSegmentIndex:0]; // &y=xxxxx
    [iPhoneTextField setText:@"284993459"]; // &a=xxxxx
    [iPadTextField setText:@"284993459"]; // &b=xxxxx
    [macOSTextField setText:@""]; // &m=xxxxx
    [tvOSTextField setText:@""]; // &q=xxxxx
    [androidTextField setText:@"com.shazam.android"];  // &g=xxxxx
    [androidTabletTextField setText:@"com.shazam.android"];  // &h=xxxxx
    [windowsTextField setText:@""];  // &w=xxxxx
    [windowsPhoneTextField setText:@""];  // &x=xxxxx
    [steamTextField setText:@""];  // &s=xxxxx
}
@end
