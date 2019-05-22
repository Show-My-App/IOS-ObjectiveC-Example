//
//  ExplainViewController.m
//  show-my-app
//
//  Created by JFC idéMobi on 21/05/2019.
//  Copyright © 2019 idéMobi. All rights reserved.
//

#import "ExplainViewController.h"
#import "ShowMyApp.h"
#import "ShowMyAppViewController.h"

@interface ExplainViewController ()

@end

@implementation ExplainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)ShareMe:(id)sender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    ShowMyAppViewController *tShowMyAppViewController = [ShowMyAppViewController CreateViewController:tShowMyAppInstance];
    [[self navigationController] presentViewController:tShowMyAppViewController animated:YES completion:nil];
}

-(IBAction)TestOne:(id)sender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    ShowMyAppViewController *tShowMyAppViewController = [ShowMyAppViewController CreateViewController:tShowMyAppInstance];
    [[self navigationController] presentViewController:tShowMyAppViewController animated:YES completion:nil];
}
-(IBAction)TestTwo:(id)sender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    ShowMyAppViewController *tShowMyAppViewController = [ShowMyAppViewController CreateViewController:tShowMyAppInstance];
    [[self navigationController] presentViewController:tShowMyAppViewController animated:YES completion:nil];
}
-(IBAction)TestThree:(id)sender {
    //NSLog(@" %s line %d",__FUNCTION__, __LINE__);
    ShowMyApp *tShowMyAppInstance = [[ShowMyApp alloc] init];
    ShowMyAppViewController *tShowMyAppViewController = [ShowMyAppViewController CreateViewController:tShowMyAppInstance];
     [[self navigationController] presentViewController:tShowMyAppViewController animated:YES completion:nil];
}

@end
