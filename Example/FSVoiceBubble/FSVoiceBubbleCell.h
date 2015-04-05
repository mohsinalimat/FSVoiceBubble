//
//  FSVoiceBubbleCell.h
//  FSVoiceBubble
//
//  Created by Wenchao Ding on 4/5/15.
//  Copyright (c) 2015 f33chobits. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FSVoiceBubble.h"

@interface FSVoiceBubbleCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *portraitImageView;
@property (weak, nonatomic) IBOutlet FSVoiceBubble *voiceBubble;

@end
