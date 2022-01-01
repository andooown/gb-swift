// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GBSwift",
    platforms: [
        .macOS(.v10_15)
    ],
    products: [
        .executable(
            name: "gbswift",
            targets: [
                "GBSwiftCLI"
            ]
        ),
        .library(
            name: "GBSwiftKit",
            targets: [
                "GBSwiftKit"
            ] 
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .executableTarget(
            name: "GBSwiftCLI",
            dependencies: [
                .target(name: "GBSwiftKit"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .target(name: "GBSwiftKit"),
    ]
)
