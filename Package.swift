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
			type: .static,
			targets: ["CovantexSDK", "CovantexFrameworkWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.9.0")),
		.package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", .upToNextMajor(from: "5.0.0")),
		.package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from: "4.4.3")),
		.package(url: "https://github.com/parmar-mehul/KeychainAccess", .upToNextMajor(from: "1.0.2")),
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
