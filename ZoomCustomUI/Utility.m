//
//  Utility.m
//  ZoomCustomUI
//
//  Created by Y.X. Xiong on 2021/7/4.
//

#import "Utility.h"

@implementation Utility
+ (UIViewController *)rootVC{
    UIWindow        *foundWindow = nil;
       NSArray         *windows = [[UIApplication sharedApplication]windows];
       for (UIWindow   *window in windows) {
           if (window.isKeyWindow) {
               foundWindow = window;
               break;
           }
       }
    if(foundWindow != nil)return foundWindow.rootViewController;
    return nil;
}
@end

