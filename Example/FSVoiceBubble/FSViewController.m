//
//  FSViewController.m
//  FSVoiceBubble
//
//  Created by f33chobits on 03/25/2015.
//  Copyright (c) 2014 f33chobits. All rights reserved.
//

#import "FSViewController.h"

@interface FSViewController ()

@end

@implementation FSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _bubble1.contentURL = [[NSBundle mainBundle] URLForResource:@"Let It Go" withExtension:@"mp3"];
    _bubble1.invert = YES;
    
    
    _bubble2.contentURL = [[NSBundle mainBundle] URLForResource:@"Let It Go" withExtension:@"mp3"];
    
    
    _bubble3.contentURL = [[NSBundle mainBundle] URLForResource:@"Let It Go" withExtension:@"mp3"];
    _bubble3.waveColor = [UIColor blackColor];
    _bubble3.animatingWaveColor = [UIColor blackColor];
    _bubble3.durationInsideBubble = YES;
    [_bubble3 setBubbleImage:[UIImage imageNamed:@"fs_cap_bg_0"]];
    
    
    _bubble4.waveColor = [UIColor blackColor];
    _bubble4.contentURL = [[NSBundle mainBundle] URLForResource:@"Let It Go" withExtension:@"mp3"];
    _bubble4.animatingWaveColor = [UIColor blackColor];
    _bubble4.durationInsideBubble = YES;
    [_bubble4 setBubbleImage:[UIImage imageNamed:@"fs_cap_bg_1"]];
    
}

@end
