## Currier

[![Build Status](https://travis-ci.org/tigerpixel/Currier.svg?branch=master)](https://travis-ci.org/tigerpixel/Currier)

Currier transforms any function you wish into a curried version of that function. This is done by wrapping the function in a simple call to the function 'curry'. 

```swift
let myFunction: (Bool, Int) -> Float
...
let curriedFunction = cury(myFunction)
let firstApplication = curriedFunction(true)
let result = firstApplication(10)
```

The unit tests provide examples of calling the curry function using different numbers of parameters. The version of the ‘curry’ function which takes two parameters is commented and strongly typed to help with understanding the technique used.

## Requirements

There are no external requirements for this project, just Swift.

## Installation

Currier will shortly be available through Cocoapods, Carthage and the Swift Package Manager.

## MIT License

Details can be found within the project license file.