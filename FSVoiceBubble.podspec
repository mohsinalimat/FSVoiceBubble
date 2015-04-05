#
# Be sure to run `pod lib lint FSVoiceBubble.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "FSVoiceBubble"
  s.version          = "0.0.1"
  s.summary          = "A small light-weight voice/audio bubble"
  s.homepage         = "https://github.com/f33chobits/FSVoiceBubble"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "f33chobits" => "Wenchao Ding" }
  s.source           = { :git => "https://github.com/f33chobits/FSVoiceBubble.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'FSVoiceBubble' => ['Pod/Assets/*.png']
  }

  s.frameworks = 'UIKit', 'AVFoundation', 'QuartzCore'

end
