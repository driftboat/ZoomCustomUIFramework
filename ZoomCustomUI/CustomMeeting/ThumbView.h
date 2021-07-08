//
//  ThumbView.h
//  MobileRTCSample
//
//  Created by Murray Li on 2018/10/15.
//  Copyright © 2018 Zoom Video Communications, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

extern const CGFloat BTN_HEIGHT ;

@interface ThumbView : UIView
@property (nonatomic)         NSUInteger                  pinUserID;
- (void)updateFrame;
- (void)updateThumbViewVideo;
- (void)showThumbView;
- (void)hiddenThumbView;
@end

