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
		.binaryTarget(name: "CovantexSDK",
					  path: "./Sources/CovantexSDK.xcframework.zip")

//		.binaryTarget(name: "CovantexSDK",
//					  path: "./Sources/CovantexSDK.xcframework")
//		.binaryTarget(
//			name: "CovantexSDK",
//			url: "https://dl.google.com/firebase/ios/swiftpm/8.15.0/CovantexSDK.zip",
//			checksum: "54a730e20d435c6aeec4a2bb91741f6a428a3cebcba89e9c0d2bc1a8dcbb0ffd"
//		)
    ]
)
