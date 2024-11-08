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
            targets: ["BBMediaKitWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/orchetect/TimecodeKit.git", from: "2.0.0"),
        .package(url: "https://github.com/weichsel/ZIPFoundation.git", from: "0.9.19"),
        .package(url: "https://github.com/socketio/socket.io-client-swift", from: "16.1.1"),
        .package(url: "https://github.com/Datadog/dd-sdk-ios.git", from: "2.18.0")
    ],
    targets: [
        .binaryTarget(
            name: "BBMediaKit",
            path: "Frameworks/BBMediaKit.xcframework"
        ),
        .target(
            name: "BBMediaKitWrapper",
            dependencies: [
                .target(name: "BBMediaKit"),
                .product(name: "TimecodeKit", package: "TimecodeKit"),
                .product(name: "ZIPFoundation", package: "ZIPFoundation"),
                .product(name: "SocketIO", package: "socket.io-client-swift"),
                .product(name: "DatadogCore", package: "dd-sdk-ios"),
                .product(name: "DatadogLogs", package: "dd-sdk-ios")
            ]
        )
    ]
)
