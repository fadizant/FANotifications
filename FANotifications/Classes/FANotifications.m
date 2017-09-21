//
//  FANotifications.m
//  SayidatyMall
//
//  Created by Fadi on 14/12/16.
//  Copyright © 2016 apprikot. All rights reserved.
//

#import "FANotifications.h"

@implementation FANotifications

+ (void)showAlertMessageWithTitle:(NSString *)title
                                  message:(NSString *)message
                                 duration:(NSTimeInterval)duration
                                alertType:(ISAlertType)type
                            alertPosition:(ISAlertPosition)position
                                backColor:(UIColor*)color
                              didComplete:(didComplete)complete
{
    [ISMessages showCardAlertWithTitle:title
                               message:message
                              duration:duration
                           hideOnSwipe:YES
                             hideOnTap:YES
                             backColor:color
                         alertPosition:position
                               didHide:^(BOOL finished) {
                                   complete(finished);
                               }];
}

+ (void)showNotificationMessageWithTitle:(NSString *)title
                                        duration:(NSTimeInterval)duration
                                notificationType:(CWNotificationStyle)notificationType
                                animationInStyle:(CWNotificationAnimationStyle)animationInStyle
                               animationOutStyle:(CWNotificationAnimationStyle)animationOutStyle
                                       backColor:(UIColor*)color
                                     didComplete:(didComplete)complete
{
    CWStatusBarNotification *notification = [CWStatusBarNotification new];
    notification.notificationLabelBackgroundColor = color;
    notification.notificationAnimationInStyle = animationInStyle;
    notification.notificationAnimationOutStyle = animationOutStyle;
    notification.notificationStyle = notificationType;
    [notification displayNotificationWithMessage:title
                                     forDuration:duration
                                      completion:^{
        complete(YES);
    }];
}

@end
