// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SharpnezCore",
    platforms: [.iOS(.v18), .macOS(.v15), .visionOS(.v2)],
    products: [
        .library(
            name: "SharpnezCore",
            targets: ["SharpnezCore"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SharpnezCore",
            dependencies: [],
            path: "SharpnezCore/SharpnezCore",
            sources: ["Source"],
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                .define("ENABLE_LIBRARY_EVOLUTION", .when(configuration: .release)),
                .unsafeFlags(["-enable-library-evolution", "-emit-module-interface"])
            ]
        )
    ]
)
