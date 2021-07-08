//
//  zoom_customui.m
//  zoom_customui
//
//  Created by Y.X. Xiong on 2021/6/24.
//

#import "ZoomCustomUI.h"
#import "Utility.h"
#import "CustomMeetingViewController.h"
@interface ZoomCustomUI()

@property (retain, nonatomic) CustomMeetingViewController *customMeetingVC; 
@end

@implementation ZoomCustomUI

-(void)onInitMeetingView{
    NSLog(@"onInitMeetingView....");
    UIViewController* rootVC = [Utility rootVC];
    CustomMeetingViewController *vc = [[CustomMeetingViewController alloc] init];
    self.customMeetingVC = vc;
    [vc release];
    [rootVC addChildViewController:self.customMeetingVC];
    [rootVC.view addSubview:self.customMeetingVC.view];
    [self.customMeetingVC didMoveToParentViewController:rootVC];
    
    self.customMeetingVC.view.frame = rootVC.view.bounds;
}

-(void)onDestroyMeetingView{
    NSLog(@"onDestroyMeetingView....");
    
    [self.customMeetingVC willMoveToParentViewController:nil];
    [self.customMeetingVC.view removeFromSuperview];
    [self.customMeetingVC removeFromParentViewController];
    [self.customMeetingVC release];
    self.customMeetingVC = nil;
}

@end

