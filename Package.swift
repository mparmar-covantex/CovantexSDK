// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package (
    name: "CovantexSDK",
	defaultLocalization: "en",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CovantexSDK",
            targets: ["CovantexFrameworkWrapper"]),
    ],
    targets: [
//		.binaryTarget(name: "CovantexSDK",
//					  path: "./Sources/CovantexSDK.xcframework.zip")
		.target(
			name: "CovantexFrameworkWrapper",
			dependencies: [
				"CovantexSDK",
			],
			path: "CovantexFrameworkWrapper"
		),
		.binaryTarget(
			name: "CovantexSDK",
			url: "https://github.com/mparmar-covantex/CovantexSDK/releases/download/1.0.7/CovantexSDK.xcframework.zip",
			checksum: "97a7a4c494d9c084c222fe1e67821c62e5786fe1b9ac2d7b10c5ccbe5534e08b"
		)
//		.binaryTarget(name: "CovantexSDK",
//					  path: "./Sources/CovantexSDK.xcframework")
    ]
)
