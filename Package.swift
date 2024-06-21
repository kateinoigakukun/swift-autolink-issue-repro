// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "poc-module-name-conflict",
    targets: [
        .plugin(
            name: "plugin",
            capability: .buildTool(),
            dependencies: ["poc-module-name-conflict"]
        ),
        .executableTarget(name: "poc-module-name-conflict")
    ]
)
