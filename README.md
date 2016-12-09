# RxPermission

[![CocoaPods](https://img.shields.io/cocoapods/v/RxSwift-Permission.svg)](https://github.com/sunshinejr/RxPermission)
![Swift 3](https://img.shields.io/badge/Swift-3.0.x-orange.svg)
[![License](https://img.shields.io/cocoapods/l/RxSwift-Permission.svg?style=flat)](http://cocoapods.org/pods/RxSwift-Permission)
[![Platform](https://img.shields.io/cocoapods/p/RxSwift-Permission.svg?style=flat)](http://cocoapods.org/pods/RxSwift-Permission)

ReactiveX way to request permissions on iOS


## Installation

RxPermission is available through [CocoaPods](http://cocoapods.org).


```ruby
pod 'RxSwift-Permission'
```
## Notice
**:warning: You must read [this](https://github.com/delba/Permission#configuration) before use.**

### Sample code
```swift
Permission.contacts.rx
    .status
    .subscribeNext { status in
        print("Status: \(status)")
    }
    .addDisposableTo(disposeBag)
```
Remeber add [NSContactsUsageDescription](https://developer.apple.com/library/content/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.html#//apple_ref/doc/uid/TP40009251-SW24) to your Info.plist.

### Available permissions:
See [PermissionType.swift](https://github.com/delba/Permission/blob/master/Source/PermissionType.swift)

### Available statuses:
See [PermissionType.swift](https://github.com/delba/Permission/blob/master/Source/PermissionStatus.swift)


For more info about permissions and statuses, please visit [Permission's README](https://github.com/delba/Permission#permission).

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## License

RxPermission is available under the MIT license. See the LICENSE file for more info.
