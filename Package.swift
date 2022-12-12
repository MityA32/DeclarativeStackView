// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DeclarativeStackView",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DeclarativeStackView",
            targets: ["DeclarativeStackView"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DeclarativeStackView",
            dependencies: []),
        .testTarget(
            name: "DeclarativeStackViewTests",
            dependencies: ["DeclarativeStackView"]),
    ]
)
