# FSVoiceBubble

[![Version](https://img.shields.io/cocoapods/v/FSVoiceBubble.svg?style=flat)](http://cocoapods.org/pods/FSVoiceBubble)
[![License](https://img.shields.io/cocoapods/l/FSVoiceBubble.svg?style=flat)](http://cocoapods.org/pods/FSVoiceBubble)
[![Platform](https://img.shields.io/cocoapods/p/FSVoiceBubble.svg?style=flat)](http://cocoapods.org/pods/FSVoiceBubble)

A short light-weight voice bubble to let you: <br/>
1. Play a short audio<br/>
2. Show wave effect while playing<br/>
3. Customize your own style(wave color、bubble image .etc)<br/>

## Screenshots

### It's strong enough to be embedded into tableView
![fsvoicebubble-tableview](https://cloud.githubusercontent.com/assets/5186464/6996648/791ff52a-dbc6-11e4-9d93-c184f1b9b0f9.png)

### A Colorful Example
![fsvoicebubble-style](https://cloud.githubusercontent.com/assets/5186464/6996650/8475bb8a-dbc6-11e4-824c-fe1616f4e556.gif)
###

## Installation

* cocoapods:

```ruby
pod "FSVoiceBubble"
```

* manually:
Drag all Classes under Pod/Classes into your project. Drag `FSVoiceBubble.bundle`(Pod/Assets) into your project.

## Usage

```objective-c
#import "FSVoiceBubble.h"
```

The header file is quite clear:)
```objective-c
@interface FSVoiceBubble : UIView

@property (strong, nonatomic) NSURL   *contentURL;
@property (strong, nonatomic) IBInspectable UIColor *waveColor;
@property (strong, nonatomic) IBInspectable UIColor *animatingWaveColor;
@property (strong, nonatomic) IBInspectable UIImage *bubbleImage;
@property (assign, nonatomic) IBInspectable BOOL    invert;
@property (assign, nonatomic) IBInspectable BOOL    exclusive;
@property (assign, nonatomic) IBInspectable BOOL    durationInsideBubble;
@property (assign, nonatomic) IBOutlet id<FSVoiceBubbleDelegate> delegate;

- (void)prepareToPlay;
- (void)play;
- (void)pause;
- (void)stop;

- (void)startAnimating;
- (void)stopAnimating;

@end

@protocol FSVoiceBubbleDelegate <NSObject>

- (void)voiceBubbleDidStartPlaying:(FSVoiceBubble *)voiceBubble;

@end

```

## Notice
* The purpose for this lib is to play short voice files. Don't try to play an audio longer the 60 seconds
* Only support local file at this moment.

## Requirements
iOS7.0

## Author

Wenchao Ding, f33chobits@gmail.com

## License

FSVoiceBubble is available under the MIT license. See the LICENSE file for more info.
