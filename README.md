# GDorisTransition

[![CI Status](https://img.shields.io/travis/810373457@qq.com/GDorisTransition.svg?style=flat)](https://travis-ci.org/810373457@qq.com/GDorisTransition)
[![Version](https://img.shields.io/cocoapods/v/GDorisTransition.svg?style=flat)](https://cocoapods.org/pods/GDorisTransition)
[![License](https://img.shields.io/cocoapods/l/GDorisTransition.svg?style=flat)](https://cocoapods.org/pods/GDorisTransition)
[![Platform](https://img.shields.io/cocoapods/p/GDorisTransition.svg?style=flat)](https://cocoapods.org/pods/GDorisTransition)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

GDorisTransition is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'GDorisTransition'
```

## Usage

```objc
/// GDorisSwipeGestureTransition 带有swipe手势的转场.
GCommentModalViewController * modal = [GCommentModalViewController new];
modal.modalPresentationStyle = UIModalPresentationCustom;
GDorisSwipeGestureTransition * swipeTransition = [GDorisSwipeGestureTransition swipeGestureTransitionWithTarget:modal];
swipeTransition.needsTopMask = YES;
swipeTransition.containerOffset = 124;
modal.transitioningDelegate = swipeTransition;
modal.modalPresentationStyle = UIModalPresentationCustom;
modal.modalPresentationCapturesStatusBarAppearance = YES;
[self presentViewController:modal animated:YES completion:nil];
```

## Author

810373457@qq.com, giki.biu@gmail.com

## License

GDorisTransition is available under the MIT license. See the LICENSE file for more info.
