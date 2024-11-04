# SharpnezCore

## What is?
### SharpnezCore is a Core module for iOS development. This module provides support codes, is still on the beginning of the development, will have more features soon

## Installing via cocoapods

[CocoaPods](http://cocoapods.org) is a dependency manager for Cocoa projects. You can install it with the following command

```bash
$ gem install cocoapods
```

Frist of all, you need to setup a source propertie in your ``Poffile``

After that still in your Pofile file add the following line.

```
pod 'SharpnezCore', :git => 'https://github.com/TiagoLinharess/sdk-ios-sharpnez-core.git', :tag => '2.0.0'
```
Then, run the following command:

```bash
$ pod install
```
## Usage

### UIImageView + Extension methods

#### cornerRadius method

This method make UIImageview corner rounded according to the entered value

Example of usage

```swift
UIImageView().cornerRadius(radius: 32)
```

#### load method

This method loads de UIImage from a URL 

Example of usage

```swift
guard let url = URL(string: "https://avatars.githubusercontent.com/u/10639145?s=200&v=4") else { return }
UIImageView().load(url: url)
```

### CoreDateFormat

These are the date formats

```swift
public enum CoreDateFormat: String, CaseIterable {
    /// Default date by location
    case normal = "yyyyMMdd"
    
    /// Default date with hour and minute
    case normalWithHourMinute = "yyyyMMdd, HH:mm"
    
    /// Default date with hour, minute and second
    case normalWithHourMinuteAndSecond = "yyyyMMdd, HH:mm:ss"
}
```

### Date + Extension methods

#### toString method

This method transform a Date in to a optional String based on CoreDateFormat

Example of usage

```swift
Date().toString(to: .normalWithHourMinute)
```

### String + Extension methods

#### toDate method

This method transform a String in to a optional Date based on CoreDateFormat

Example of usage

```swift
String().toDate(with: .normalWithHourMinute)
```

#### formatDate method

This method transform a String in to a optional String formatted based on from CoreDateFormat to CoreDateFormat

Example of usage

```swift
String().formatDate(from: .normalWithHourMinute, to : .normal)
```

### TimeInterval + Extension methods

#### getMinutes method

This method transform a TimeInterval in to minutes

Example of usage

```swift
TimeInterval(floatLiteral: 100000000).getMinutes()
```

### CoreError

This is a Error enum that's make easier to handle errors

```swift
public enum CoreError: Error {
    
    /// Generic Error.
    /// message value: Something went wrong, please try again later.
    case genericError
    
    /// Parse Error.
    /// message value: Something went wrong while searching for information, please try again later.
    case parseError
    
    /// HTTP Error.
    /// Params: (String).
    /// message value: param String value.
    case customError(String)
    
    // MARK: - Public Properties -
    
    /// ApiError Message.
    public var message: String {
        switch self {
        case .genericError:
            return CoreConstants.CoreError.genericErrorMessage
        case .parseError:
            return CoreConstants.CoreError.parseErrorMessage
        case .customError(let string):
            return string
        }
    }
}
```