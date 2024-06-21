// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "poc-module-name-conflict",
    products: [
        .executable(name: "poc-module-name-conflict", targets: ["poc-module-name-conflict"]),
        .plugin(name: "plugin", targets: ["plugin"]),
    ],
    dependencies: [
        // .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.1"),
    ],
    targets: [
        .plugin(
            name: "plugin",
            capability: .buildTool(),
            dependencies: ["poc-module-name-conflict"]
        ),
        .executableTarget(
            name: "poc-module-name-conflict",
            dependencies: [
                // .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        )
    ]
)
