// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-library",
    products: [
        .library(name: "swift-library", type: .static, targets: ["swift-library"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "swift-library",
            dependencies: ["SwiftGenerated"]
        ),
        .target(name: "SwiftGenerated", dependencies: ["CGenerated"]),
        .target(name: "CGenerated", dependencies: []),
        .target(name: "SwiftExposedGenerated", dependencies: ["swift-library"]),
    ]
)
