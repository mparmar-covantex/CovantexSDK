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
            targets: ["CovantexSDK"]),
    ],
    targets: [
//		.binaryTarget(name: "CovantexSDK",
//					  path: "./Sources/CovantexSDK.xcframework.zip")
		.binaryTarget(
			name: "CovantexSDK",
			url: "https://github.com/mparmar-covantex/CovantexSDK/releases/download/1.0.5/CovantexSDK.xcframework.zip",
			checksum: "7c3d745735f4155660c79ba457c7bce13362795ce8b03808a56ec0a5a8e15742"
		)
//		.binaryTarget(name: "CovantexSDK",
//					  path: "./Sources/CovantexSDK.xcframework")
//		.binaryTarget(
//			name: "CovantexSDK",
//			url: "https://dl.google.com/firebase/ios/swiftpm/8.15.0/CovantexSDK.zip",
//			checksum: "7c3d745735f4155660c79ba457c7bce13362795ce8b03808a56ec0a5a8e15742"
//		)
    ]
)
