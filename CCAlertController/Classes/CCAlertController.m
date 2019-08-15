//
//  CCAlertController.m
//  iBlocker
//
//  Created by iBlocker on 2019/08/15.
//  Copyright © 2018 iBlocker. All rights reserved.
//

#import "CCAlertController.h"

@interface CCAlertController ()

@end

@implementation CCAlertController

/**
 初始化CCAlertViewController
 
 @param title           标题
 @param message         信息
 @param alignment       对齐方式
 @return AlertViewController
 */
+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                               alignment:(NSTextAlignment)alignment {
    return [self alertControllerWithTitle:title
                                  message:message
                                alignment:alignment
                              messageFont:[UIFont systemFontOfSize:14]
                             messageColor:[UIColor grayColor]];
}

/**
 初始化CCAlertViewController
 
 @param title           标题
 @param message         信息
 @param alignment       对齐方式
 @param messageFont     信息尺寸
 @param messageColor    信息颜色
 @return AlertViewController
 */
+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                               alignment:(NSTextAlignment)alignment
                             messageFont:(UIFont *)messageFont
                            messageColor:(UIColor *)messageColor {
    CCAlertController *alertController = [CCAlertController alertControllerWithTitle:title
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    // 修改message字体及颜色
    NSMutableAttributedString *messageStr = [[NSMutableAttributedString alloc] initWithString:message];
    NSMutableParagraphStyle   *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:5.5];
    paragraphStyle.alignment = alignment;
    [messageStr addAttribute:NSParagraphStyleAttributeName
                       value:paragraphStyle
                       range:NSMakeRange(0, messageStr.length)];
    [messageStr addAttribute:NSForegroundColorAttributeName
                       value:messageColor
                       range:NSMakeRange(0, messageStr.length)];
    [messageStr addAttribute:NSFontAttributeName
                       value:messageFont
                       range:NSMakeRange(0, messageStr.length)];
    [alertController setValue:messageStr forKey:@"attributedMessage"];
    return alertController;
}

/**
 初始化CCAlertViewController
 
 @param title           标题
 @param titleFont       标题尺寸
 @param titleColor      标题颜色
 @param message         信息
 @param messageFont     信息尺寸
 @param messageColor    信息颜色
 @return AlertViewController
 */
+ (instancetype)alertControllerWithTitle:(NSString *)title
                               titleFont:(UIFont *)titleFont
                              titleColor:(UIColor *)titleColor
                                 message:(NSString *)message
                             messageFont:(UIFont *)messageFont
                            messageColor:(UIColor *)messageColor {
    CCAlertController *alertController = [CCAlertController alertControllerWithTitle:nil
                                                                             message:nil
                                                                      preferredStyle:UIAlertControllerStyleAlert];
    // 修改title字体及颜色
    NSMutableAttributedString *titleStr = [[NSMutableAttributedString alloc] initWithString:title];
    NSMutableParagraphStyle *titleStyle = [[NSMutableParagraphStyle alloc] init];
    titleStyle.alignment = NSTextAlignmentLeft;
    [titleStr addAttribute:NSParagraphStyleAttributeName
                     value:titleStyle
                     range:NSMakeRange(0, titleStr.length)];
    [titleStr addAttribute:NSForegroundColorAttributeName
                     value:titleColor
                     range:NSMakeRange(0, titleStr.length)];
    [titleStr addAttribute:NSFontAttributeName
                     value:titleFont
                     range:NSMakeRange(0, titleStr.length)];
    [alertController setValue:titleStr forKey:@"attributedTitle"];
    // 修改message字体及颜色
    NSMutableAttributedString *messageStr = [[NSMutableAttributedString alloc] initWithString:message];
    [messageStr addAttribute:NSForegroundColorAttributeName
                       value:messageColor
                       range:NSMakeRange(0, messageStr.length)];
    
    NSCharacterSet* nonDigits = [[NSCharacterSet decimalDigitCharacterSet] invertedSet];
    int remainSecond = [[message stringByTrimmingCharactersInSet:nonDigits] intValue];
    NSRange range = [message rangeOfString:[NSString stringWithFormat:@"%d", remainSecond]];
    [messageStr addAttribute:NSForegroundColorAttributeName
                       value:[UIColor grayColor]
                       range:range];
    [messageStr addAttribute:NSFontAttributeName
                       value:messageFont
                       range:NSMakeRange(0, messageStr.length)];
    [alertController setValue:messageStr forKey:@"attributedMessage"];
    return alertController;
}

@end
