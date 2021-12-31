// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GBSwift",
    platforms: [
        .macOS(.v10_15)
    ],
    dependencies: [
    ],
    targets: [
        .executableTarget(
            name: "gb-swift",
            dependencies: [
                .target(name: "GBSwift"),
            ]),
        .target(name: "GBSwift"),
    ]
)
