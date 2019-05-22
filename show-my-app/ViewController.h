//
//  ViewController.h
//  show-my-app
//
//  Created by JFC idéMobi on 19/05/2019.
//  Copyright © 2019 idéMobi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    IBOutlet  UITextField *appNameTextField; // &n=xxxxx
    IBOutlet  UISegmentedControl *designSegmentedControl; // &d=x
    IBOutlet UITextField *iPhoneTextField; // &a=xxxxx
    IBOutlet UITextField *iPadTextField; // &b=xxxxx
    IBOutlet UITextField *macOSTextField; // &m=xxxxx
    IBOutlet UITextField *tvOSTextField; // &q=xxxxx
    IBOutlet UITextField *androidTextField;  // &g=xxxxx
    IBOutlet  UITextField *androidTabletTextField;  // &h=xxxxx
    IBOutlet  UITextField *windowsTextField;  // &w=xxxxx
    IBOutlet UITextField *windowsPhoneTextField;  // &x=xxxxx
    IBOutlet UITextField *steamTextField;  // &s=xxxxx
    IBOutlet UISwitch *tinySwith;  // &t=0/1
}

-(IBAction)ShareViewController:(id)sSender;
-(IBAction)ShareTestController:(id)sSender;

-(IBAction)FillWithExample:(id)sSender;

@end

