# Currier

[![Build Status](https://travis-ci.org/tigerpixel/Currier.svg?branch=master)](https://travis-ci.org/tigerpixel/Currier)
[![Version](https://img.shields.io/cocoapods/v/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)
[![Platform](https://img.shields.io/cocoapods/p/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)

Currier transforms any Swift function into a curried version of that function. This is achieved by wrapping it in a simple 'curry' call.

Given the following function:

```swift
func myMultiply(first: Float, second: Int) -> Double {
    return Double(first) * Double(second)
}
```

Currier will produce a curried version:

```swift
let curriedMultiply: (Float) -> (Int) -> Double = curry(myMultiply) // Currier used here!

let multiplyByTwo: (Int) -> Double = curriedMultiply(2.0) // Partial application

let result: Double = multiplyByTwo(10)

assert(20 == result) // Assertion true

```

The previous example can be condensed down to the following:

```swift
let sameResult = curry(myMultiply)(2.0)(10)
```

The unit tests provide examples of calling the curry function using different numbers of parameters. The version of the function which takes two parameters is explicitly typed and commented.

## Requirements

There are no external requirements for this project, just Swift.

- iOS 8.0+ / macOS 10.9+ / tvOS 9.0+ / watchOS 2.0+
- Xcode 11+
- Swift 5.1+

For older versions of Swift and Xcode, please see prior releases.

## Installation

### Cocoapods

Currier is available through [CocoaPods](https://cocoapods.org/pods/Currier). To install it, simply add the following line to your Podfile:

```ruby
pod "Currier"
```

### Carthage

If you use [Carthage](https://github.com/Carthage/Carthage) to manage your dependencies, simply add the following line to your Cartfile:

```ogdl
github "tigerpixel/Currier"
```

If you use Carthage to build your dependencies, make sure you have added `Currier.framework` to the "_Linked Frameworks and Libraries_" section of your target, and have included them in your Carthage framework copying build phase.

### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager) is the official tool for managing the distribution of Swift code. It is currently only available for macOS. It can also be used with Linux but this project does not fully suppourt that at this point.

If you use it to manage your dependencies, simply add Currier to the dependencies value of your Package.swift file.

```swift
dependencies: [
    .Package(url: "https://github.com/Tigerpixel/Currier.git", majorVersion: 1)
]
```

### Git Submodule

1. Add the Currier repository as a [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) of your application’s repository.
1. Run `git submodule update --init --recursive` from within the Currier folder.
1. Drag and drop `Currier.xcodeproj` into your application’s Xcode project or workspace.
1. On the “General” tab of your application target’s settings, add `Currier.framework`. to the “Embedded Binaries” section.
1. If your application target does not contain Swift code at all, you should also set the `EMBEDDED_CONTENT_CONTAINS_SWIFT` build setting to “Yes”.

## MIT License

Currier is available under the MIT license. Details can be found within the LICENSE file.
