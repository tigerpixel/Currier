// swift-tools-version:4.0
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
    products: [
        .library(name: "Currier", targets: ["Currier"])
    ],
    targets: [
        .target(name: "Currier"),
        .testTarget(name: "CurrierTests", dependencies: ["Currier"])
    ]
)
