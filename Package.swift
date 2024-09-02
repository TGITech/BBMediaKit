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
            targets: ["BBMediaKit", "BBMediaKitSDK"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/orchetect/TimecodeKit.git", from: "2.0.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.19")
    ],
    targets: [
        .binaryTarget(
            name: "BBMediaKitSDK",
            path: "./Frameworks/BBMediaKit.xcframework"
        ),
        .target(
            name: "BBMediaKit",
            dependencies: [
                .target(name: "BBMediaKitSDK"),
                .product(name: "TimecodeKit", package: "TimecodeKit"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation")
            ]
        )
    ]
)
