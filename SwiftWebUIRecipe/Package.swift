// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "SwiftWebUIRecipe",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/SwiftWebUI/SwiftWebUI.git", from: "0.3.0"),
    ],
    targets: [
        .target(
            name: "SwiftWebUIRecipe",
            dependencies: ["SwiftWebUI"]),
        .testTarget(
            name: "SwiftWebUIRecipeTests",
            dependencies: ["SwiftWebUIRecipe"]),
    ]
)
