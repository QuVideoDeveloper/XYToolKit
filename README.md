# XYToolKit

[![CI Status](https://img.shields.io/travis/irobbin1024/XYToolKit.svg?style=flat)](https://travis-ci.org/irobbin1024/XYToolKit)
[![Version](https://img.shields.io/cocoapods/v/XYToolKit.svg?style=flat)](https://cocoapods.org/pods/XYToolKit)
[![License](https://img.shields.io/cocoapods/l/XYToolKit.svg?style=flat)](https://cocoapods.org/pods/XYToolKit)
[![Platform](https://img.shields.io/cocoapods/p/XYToolKit.svg?style=flat)](https://cocoapods.org/pods/XYToolKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

XYToolKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'XYToolKit'
```

## 用法

这是一个工具类，提供了KVO观察者、后台任务、相册操作、专用代理对象等等支持，部分API调用示例如下:

```objc
#import <XYToolKit/XYToolKit.h>

// listener
XYPerson *person = [[XYPerson alloc] init];
XYKVOListener *lis = [XYKVOListener listenerWithObserver:self];
[lis observe:person keyPath:@"age" block:^(id  _Nonnull newValue) {
    NSLog(@"newValue: %@", newValue);
}];

// photo library
NSString *pngPath = [[NSBundle mainBundle] pathForResource:@"halo_favicon" ofType:@"png"];
[XYPhotoLibraryHelper xy_saveImage:[NSURL URLWithString:pngPath]
                     toCustomAlbum:@"XYToolKit"
                   completionBlock:^(NSURL * _Nullable assetURL, NSError * _Nullable error) {
    NSLog(@"assetURL: %@ error: %@", assetURL, error.localizedDescription);
}];

```


## Author

longbin.lai, longbin.lai@quvideo.com

## License

XYToolKit is available under the GPL license. See the LICENSE file for more info.
