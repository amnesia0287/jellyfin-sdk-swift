// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "JellyfinAPI",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_11),
        .tvOS(.v13),
        .watchOS(.v5),
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "JellyfinAPI",
            targets: ["JellyfinAPI"]
        ),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Flight-School/AnyCodable", from: "0.6.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "JellyfinAPI",
            dependencies: ["AnyCodable", ],
            path: "Sources/JellyfinAPI"
        ),
    ]
)
