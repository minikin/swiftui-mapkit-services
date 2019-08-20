// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUIMapKitServices",
		platforms: [
			.iOS(.v13)
		],
    products: [
        .library(
            name: "SwiftUIMapKitServices",
            targets: ["SwiftUIMapKitServices"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftUIMapKitServices",
            dependencies: []),
        .testTarget(
            name: "SwiftUIMapKitServicesTests",
            dependencies: ["SwiftUIMapKitServices"]),
    ]
)
