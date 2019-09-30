// swift-tools-version:5.1
//
//  Package.swift
//  Currier
//
//  Created by Liam on 09/03/2017.
//  Copyright © 2017 Tigerpixel Ltd. All rights reserved.
//

/// A Currier Package Description for use with the Swift Package Manager

import PackageDescription

let package = Package(
    name: "Currier",
    platforms: [
        // Other platforms compile as far back as possible by default.
        .macOS(.v10_10)
    ],
    products: [
        .library(name: "Currier", targets: ["Currier"])
    ],
    targets: [
        .target(name: "Currier"),
        .testTarget(name: "CurrierTests", dependencies: ["Currier"])
    ]
)
