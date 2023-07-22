// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "AwesomeWeekKit",
    platforms: [
        // Only add support for iOS 13 and up.
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "AwesomeWeekKit",
            targets: ["AwesomeWeekKit"]
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "AwesomeWeekKit"
        ),
        .testTarget(
            name: "AwesomeWeekKitTests",
            dependencies: ["AwesomeWeekKit"]
        ),
    ]
)
