//
//  FSTableViewController.m
//  FSVoiceBubble
//
//  Created by Wenchao Ding on 4/5/15.
//  Copyright (c) 2015 f33chobits. All rights reserved.
//

#import "FSTableViewController.h"
#import "FSVoiceBubble.h"
#import "FSVoiceBubbleCell.h"

@interface FSTableViewController ()<FSVoiceBubbleDelegate>

@property (assign, nonatomic) NSInteger currentRow;

@end

@implementation FSTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _currentRow = -1;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FSVoiceBubbleCell *cell = nil;
    BOOL invert = indexPath.row % 2 > 0;
    if (!invert) {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    } else {
        cell = [tableView dequeueReusableCellWithIdentifier:@"cell_invert"];
    }
    cell.portraitImageView.image = [UIImage imageNamed:invert ? @"bef.jpg" : @"mt.jpg"];
    cell.voiceBubble.contentURL = [[NSBundle mainBundle] URLForResource:@"Let It Go" withExtension:@"mp3"];
    cell.voiceBubble.tag = indexPath.row;
    if (indexPath.row == _currentRow) {
        [cell.voiceBubble startAnimating];
    } else {
        [cell.voiceBubble stopAnimating];
    }
    return cell;
}

- (void)voiceBubbleDidStartPlaying:(FSVoiceBubble *)voiceBubble
{
    _currentRow = voiceBubble.tag;
}

@end
