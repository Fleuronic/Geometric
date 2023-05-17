// swift-tools-version:5.7
import PackageDescription

let package = Package(
	name: "Geometric",
	platforms: [
		.iOS(.v16)
	],
	products: [
		.library(
			name: "Geometric",
			targets: ["Geometric"]
		)
	],
	dependencies: [
		.package(url: "https://github.com/Fleuronic/Metric", branch: "main"),
		.package(url: "https://github.com/DeclarativeHub/Layoutless", .upToNextMajor(from: "0.4.0")),
		.package(url: "https://github.com/yannickl/DynamicColor", from: "5.0.1")
	],
	targets: [
		.target(
			name: "Geometric",
			dependencies: [
				"Metric",
				"Layoutless",
				"DynamicColor"
			]
		),
		.testTarget(
			name: "GeometricTests",
			dependencies: ["Geometric"]
		)
	]
)
