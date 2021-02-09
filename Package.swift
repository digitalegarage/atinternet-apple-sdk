// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "ATInternetTracker",
  platforms: [
      .macOS(.v10_15),
      .iOS(.v12),
      .watchOS(.v6),
      .tvOS(.v13)
  ],
  products: [
    .library(name: "ATInternetTracker", type: .static, targets: ["ATInternetTracker"]),
    .library(name: "ATInternetTrackerDynamic", type: .dynamic, targets: ["ATInternetTracker"])
  ],
  targets: [
    .target(
      name: "ATInternetTracker",
      path: "ATInternetTracker/Sources",
      exclude: [
        "Crash.h",
        "Crash.m",
        "Hash.h",
        "Hash.m"
			],
			resources: [.process("Images")]
    ),
    .testTarget(
      name: "ATInternetTrackerTest",
      dependencies: ["ATInternetTracker"],
      path: "ATInternetTracker/Tests",
      exclude: []
    )
  ]
)
