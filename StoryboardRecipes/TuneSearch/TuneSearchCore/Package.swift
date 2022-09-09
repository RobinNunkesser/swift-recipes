// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TuneSearchCore",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TuneSearchCore",
            targets: ["TuneSearchCore"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(name: "ExplicitArchitecture", url: "https://github.com/RobinNunkesser/explicitarchitecture-spm.git", from: "0.0.1"),
        .package(name: "TunesearchCorePorts", url: "https://github.com/RobinNunkesser/explicitarchitecture-tunesearch-core-ports-spm", from: "0.0.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TuneSearchCore",
            dependencies: ["ExplicitArchitecture"]),
        .testTarget(
            name: "TuneSearchCoreTests",
            dependencies: ["TuneSearchCore"]),
    ]
)
