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
			targets: [
				"Geometric"
			]
		)
	],
	dependencies: [
		.package(url: "https://github.com/Fleuronic/Metric.git", branch: "main"),
		.package(url: "https://github.com/DeclarativeHub/Layoutless", .upToNextMajor(from: "0.4.0"))
	],
	targets: [
		.target(
			name: "Geometric",
			dependencies: ["Metric", "Layoutless"]
		),
		.testTarget(
			name: "GeometricTests",
			dependencies: ["Geometric"]
		)
	]
)
