// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BBMediaAugmentationKit",
    platforms: [
        .iOS(.v13) // Adjust the minimum iOS version as needed
    ],
    products: [
        .library(
            name: "BBMediaAugmentationKit",
            targets: ["BBMediaKit"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/orchetect/TimecodeKit.git", from: "2.0.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.19")
    ],
    targets: [
        .binaryTarget(
            name: "BBMediaKit",
            path: "./Frameworks/BBMediaKit.xcframework"
        )
    ]
)
