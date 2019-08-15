//
//  CCAlertAction.m
//  iBlocker
//
//  Created by iBlocker on 2019/08/15.
//  Copyright © 2018 iBlocker. All rights reserved.
//

#import "CCAlertAction.h"

@implementation CCAlertAction
/**
 初始化按钮
 
 @param title 文字
 @param titleColor 文字颜色
 @param handler 回调
 @return alertAction
 */
+ (instancetype)actionWithTitle:(NSString *)title
                     titleColor:(UIColor *)titleColor
                        handler:(void (^)(UIAlertAction * _Nonnull action))handler {
    CCAlertAction *action = [CCAlertAction actionWithTitle:title style:UIAlertActionStyleDefault handler:handler];
    [action setValue:titleColor forKey:@"_titleTextColor"];
    return action;
}

@end
