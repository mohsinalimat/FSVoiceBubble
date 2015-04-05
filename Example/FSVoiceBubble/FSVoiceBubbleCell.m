//
//  FSVoiceBubbleCell.m
//  FSVoiceBubble
//
//  Created by Wenchao Ding on 4/5/15.
//  Copyright (c) 2015 f33chobits. All rights reserved.
//

#import "FSVoiceBubbleCell.h"

@implementation FSVoiceBubbleCell

- (void)layoutSubviews
{
    [super layoutSubviews];
    CAShapeLayer *circleMask = [CAShapeLayer layer];
    circleMask.path = [UIBezierPath bezierPathWithOvalInRect:_portraitImageView.bounds].CGPath;
    _portraitImageView.layer.mask = circleMask;
}

@end
