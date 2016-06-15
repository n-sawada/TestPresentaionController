//
//  ViewController.m
//  XIBImageTest
//
//  Created by Naoki_Sawada on 2016/06/16.
//  Copyright © 2016年 nsawada. All rights reserved.
//

#import "ViewController.h"
#import "SampleColleViewController.h"
#import "UIView+Frame.h"

@interface ViewController ()<UIPopoverPresentationControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(UIButton *)sender {
    
//    SampleColleViewController *vc = [[SampleColleViewController alloc] initWithNibName:@"SampleColleViewController" bundle:nil];
//    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//    SampleColleViewController *vc =  [storyboard instantiateViewControllerWithIdentifier:@"SampleColleViewController"];
//    
//    
//    
//    vc.modalPresentationStyle = UIModalPresentationCustom;
//    vc.preferredContentSize = CGSizeMake(100.0, 100.0);
    
    
//    UIPopoverPresentationController *presentationController = vc.popoverPresentationController;
//    presentationController.delegate = self;
//    presentationController.permittedArrowDirections = UIPopoverArrowDirectionLeft;
//    presentationController.sourceView = sender;
//    presentationController.sourceRect = sender.bounds;
//    
//    [self presentViewController:vc animated:YES completion:nil];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    NSString *identifier = segue.identifier;
    if ([identifier isEqualToString:@"popover"]) {
        UIViewController *dvc = segue.destinationViewController;
        UIPopoverPresentationController *ppc = dvc.popoverPresentationController;
        if (ppc) {
            ppc.delegate = self;
        }
    }}


#pragma mark - UIPopoverPresentaionControllerDelegate>


- (void)prepareForPopoverPresentation:(UIPopoverPresentationController *)popoverPresentationController {
    
    NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
}

// Called on the delegate when the user has taken action to dismiss the popover. This is not called when the popover is dimissed programatically.
- (void)popoverPresentationControllerDidDismissPopover:(UIPopoverPresentationController *)popoverPresentationController {
    
    NSLog(@"Function: %s, Line: %d", __PRETTY_FUNCTION__, __LINE__ );
}


- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
}


@end
