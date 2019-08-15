//
//  CCAlertController.h
//  iBlocker
//
//  Created by iBlocker on 2019/08/15.
//  Copyright © 2018 iBlocker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCAlertAction.h"

@interface CCAlertController : UIAlertController

/**
 初始化CCAlertViewController

 @param title           标题
 @param message         信息
 @param alignment       对齐方式
 @return AlertViewController
 */
+ (instancetype)alertControllerWithTitle:(NSString *)title
                                 message:(NSString *)message
                               alignment:(NSTextAlignment)alignment;

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
                            messageColor:(UIColor *)messageColor;

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
                            messageColor:(UIColor *)messageColor;
@end
