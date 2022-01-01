// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "Tools",
    platforms: [
        .macOS(.v10_11)
    ],
    dependencies: [
        .package(url: "https://github.com/realm/SwiftLint", from: "0.45.0"),
    ],
    targets: [
        .target(name: "Tools", path: "")
    ]
)
