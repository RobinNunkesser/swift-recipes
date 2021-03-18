// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PlaceholderPostsInfrastructure",
    platforms: [
        .macOS(.v10_12), .iOS(.v10),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PlaceholderPostsInfrastructure",
            targets: ["PlaceholderPostsInfrastructure"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.2.2"),
        .package(name: "ExplicitArchitecture", url: "https://github.com/RobinNunkesser/explicitarchitecture-spm.git", from: "0.0.1"),
        .package(path: "../PlaceholderPostsCore"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PlaceholderPostsInfrastructure",
            dependencies: ["Alamofire","ExplicitArchitecture",
                           "PlaceholderPostsCore"]),
        .testTarget(
            name: "PlaceholderPostsInfrastructureTests",
            dependencies: ["PlaceholderPostsInfrastructure"]),
    ]
)
