# RxPermission
ReactiveX way to request permissions on iOS


## Installation

RxPermission is available through [CocoaPods](http://cocoapods.org).


```ruby
pod 'RxPermission', '1.0.0'
```

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
