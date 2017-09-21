//
//  FANotifications.h
//  SayidatyMall
//
//  Created by Fadi on 14/12/16.
//  Copyright © 2016 apprikot. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ISMessages.h"
#import "CWStatusBarNotification.h"

@interface FANotifications : NSObject

typedef void(^didComplete)(BOOL finished);


+ (void)showAlertMessageWithTitle:(NSString *)title
                                  message:(NSString *)message
                                 duration:(NSTimeInterval)duration
                                alertType:(ISAlertType)type
                            alertPosition:(ISAlertPosition)position
                                backColor:(UIColor*)color
                              didComplete:(didComplete)complete;

+ (void)showNotificationMessageWithTitle:(NSString *)title
                                        duration:(NSTimeInterval)duration
                                notificationType:(CWNotificationStyle)notificationType
                                animationInStyle:(CWNotificationAnimationStyle)animationInStyle
                               animationOutStyle:(CWNotificationAnimationStyle)animationOutStyle
                                       backColor:(UIColor*)color
                                     didComplete:(didComplete)complete;

@end
