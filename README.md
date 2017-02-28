## Currier

[![Build Status](https://travis-ci.org/tigerpixel/Currier.svg?branch=master)](https://travis-ci.org/tigerpixel/Currier)
[![Version](https://img.shields.io/cocoapods/v/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)
[![Platform](https://img.shields.io/cocoapods/p/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)
[![License](https://img.shields.io/cocoapods/l/Currier.svg?style=flat)](http://cocoapods.org/pods/Currier)

Currier transforms any function you wish into a curried version of that function. This is done by wrapping the function in a simple call to the function 'curry'. 

```swift
let myFunction: (Bool, Int) -> Float
...
let curriedFunction = curry(myFunction) // Currier used here.
let firstApplication = curriedFunction(true)
let result = firstApplication(10)
```

The unit tests provide examples of calling the curry function using different numbers of parameters. The version of the ‘curry’ function which takes two parameters is commented and strongly typed to help with understanding the technique used.

## Requirements

There are no external requirements for this project, just Swift.

## Installation

Currier is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "Currier"
```
Currier will shortly be available through Carthage and the Swift Package Manager.

## MIT License

Currier is available under the MIT license. Details can be found within the LICENSE file.