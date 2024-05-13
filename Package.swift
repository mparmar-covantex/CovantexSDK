// swift-tools-version: 5.10

import PackageDescription

let package = Package(
	name: "CovantexSDK",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v13), .macOS(.v13)
	],
	products: [
		.library(
			name: "CovantexSDK",
			targets: ["CovantexSDK", "CovantexFrameworkWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.0")),
		.package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.0")),
		.package(url: "https://github.com/mparmar-covantex/ObjectMapper.git", .upToNextMajor(from: "4.4.0")),
		.package(url: "https://github.com/parmar-mehul/KeychainAccess", .upToNextMajor(from: "1.0.2")),
		.package(url: "https://github.com/mparmar-covantex/Mute", .upToNextMajor(from: "1.0.15"))
	],
	targets: [
		.target(
			name: "CovantexFrameworkWrapper",
			dependencies: [
				"CovantexSDK",
				"Alamofire",
				"ObjectMapper",
				"SwiftyJSON",
				"KeychainAccess",
				"Mute"
			],
			path: "CovantexFrameworkWrapper"
		),
		.binaryTarget(name: "CovantexSDK", path: "CovantexSDK.xcframework")
//		.binaryTarget(
//			name: "CovantexSDK",
//			url: "https://github.com/mparmar-covantex/CovantexSDK/releases/download/1.0.14/CovantexSDK.xcframework.zip",
//			checksum: "e286544525df38d33006b4ffde3edceeb89c23f2c1d638da3d32209fda03af30"
//		)
	]
)

/*
// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package (
	name: "CovantexSDK",
	defaultLocalization: "en",
	platforms: [
		.iOS(.v13)
	],
	products: [
		.library(name: "CovantexSDK", targets: ["CovantexSDK"]),
	],
	targets: [
		.binaryTarget(
			name: "CovantexSDK",
			url: "https://github.com/mparmar-covantex/CovantexSDK/releases/download/1.0.11/CovantexSDK.xcframework.zip",
			checksum: "bfbe4702387fb9bbadb939eef604c84b8320357c7a691cbf807004da80b9ca03"
		)
	]
)
*/

//let package = Package (
//    name: "CovantexSDKs",
//	defaultLocalization: "en",
//	platforms: [
//		.iOS(.v13)
//	],
//    products: [
//		.library(name: "CovantexSDKs", type: .dynamic ,targets: ["CovantexSDKs", "CovantexSDKStub"]),
//    ],
//    targets: [
//		.binaryTarget(name: "CovantexSDK", path: "../CovantexSDK.xcframework"),
////		.binaryTarget(name: "CovantexSDK",path: "./Sources/CovantexSDK.xcframework.zip")
//		.target(name: "CovantexSDKStub"),
////		.binaryTarget(
////			name: "CovantexSDKs",
////			url: "https://github.com/mparmar-covantex/CovantexSDK/releases/download/1.0.8/CovantexSDK.xcframework.zip",
////			checksum: "97a7a4c494d9c084c222fe1e67821c62e5786fe1b9ac2d7b10c5ccbe5534e08b"
////		)
//    ]
//)
