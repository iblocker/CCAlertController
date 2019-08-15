//
//  CCAlertAction.h
//  iBlocker
//
//  Created by iBlocker on 2019/08/15.
//  Copyright © 2018 iBlocker. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CCAlertAction : UIAlertAction

/**
 初始化按钮

 @param title 文字
 @param titleColor 文字颜色
 @param handler 回调
 @return alertAction
 */
+ (instancetype _Nonnull)actionWithTitle:(NSString *_Nullable)title
                              titleColor:(UIColor *_Nullable)titleColor
                                 handler:(void (^_Nullable)(UIAlertAction * _Nonnull action))handler;
@end
