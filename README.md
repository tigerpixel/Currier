## Currier

[![Build Status](https://travis-ci.org/tigerpixel/Currier.svg?branch=master)](https://travis-ci.org/tigerpixel/Currier)
[![Version](https://img.shields.io/cocoapods/v/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)
[![Platform](https://img.shields.io/cocoapods/p/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)

Currier transforms any Swift function into a curried version of that function. This is achieved by wrapping it in a simple 'curry' call.

```swift
let myFunction: (Bool, Int) -> Float
...
let curriedFunction = curry(myFunction) // Currier used here.
let firstApplication = curriedFunction(true)
let result = firstApplication(10)
```

The unit tests provide examples of calling the curry function using different numbers of parameters. The version of the function which takes two parameters is explicitly typed and commented.

## Requirements

There are no external requirements for this project, just Swift.

## Installation

### Cocoapods

Currier is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Currier"
```

### Carthage

If you use [Carthage](https://github.com/Carthage/Carthage) to manage your dependencies, simply add the following line to your Cartfile:

```
github "tigerpixel/Currier"
```

If you use Carthage to build your dependencies, make sure you have added `Currier.framework` to the "_Linked Frameworks and Libraries_" section of your target, and have included them in your Carthage framework copying build phase.

### Git Submodule

1. Add the Currier repository as a [submodule](https://git-scm.com/book/en/v2/Git-Tools-Submodules) of your application’s repository.
1. Run `git submodule update --init --recursive` from within the Currier folder.
1. Drag and drop `Currier.xcodeproj` into your application’s Xcode project or workspace.
1. On the “General” tab of your application target’s settings, add `Currier.framework`. to the “Embedded Binaries” section.
1. If your application target does not contain Swift code at all, you should also
set the `EMBEDDED_CONTENT_CONTAINS_SWIFT` build setting to “Yes”.

## MIT License

Currier is available under the MIT license. Details can be found within the LICENSE file.
