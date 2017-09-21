//
//  FAViewController.m
//  FANotifications
//
//  Created by fadizant on 09/21/2017.
//  Copyright (c) 2017 fadizant. All rights reserved.
//

#import "FAViewController.h"
#import "FANotifications.h"

@interface FAViewController ()

@end

@implementation FAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)ShowNotification:(UIButton *)sender {
    [FANotifications showAlertMessageWithTitle:NSLocalizedString(@"Title", @"")
                                       message:NSLocalizedString(@"Message", @"")
                                      duration:2.f
                                     alertType:ISAlertTypeInfo
                                 alertPosition:ISAlertPositionBottom
                                     backColor:[UIColor colorWithRed:1.000 green:0.800 blue:0.000 alpha:1.00]
                                   didComplete:^(BOOL finished) {
                                       
                                   }];
}

- (IBAction)ShowStatus:(UIButton *)sender {
    [FANotifications showNotificationMessageWithTitle:NSLocalizedString(@"Your text here", @"")
                                             duration:2.f
                                     notificationType:CWNotificationStyleStatusBarNotification
                                     animationInStyle:CWNotificationAnimationStyleBottom
                                    animationOutStyle:CWNotificationAnimationStyleBottom
                                            backColor:[UIColor colorWithRed:0.000 green:0.478 blue:1.000 alpha:1.00]
                                          didComplete:^(BOOL finished) {
                                          }];
}

@end
