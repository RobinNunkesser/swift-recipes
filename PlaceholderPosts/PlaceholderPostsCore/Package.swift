// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlaceholderPostsCore",
    platforms: [
        .macOS(.v12), .iOS(.v15),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PlaceholderPostsCore",
            targets: ["PlaceholderPostsCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "CommonPorts", url: "https://github.com/Italbytz/spm-ports-common.git", from: "0.0.5"),

    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PlaceholderPostsCore",
            dependencies: ["CommonPorts"]),
        .testTarget(
            name: "PlaceholderPostsCoreTests",
            dependencies: ["PlaceholderPostsCore"]),
    ]
)
