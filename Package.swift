// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "KtSwiftPackage",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "IndexedScrollView",
            targets: ["IndexedScrollView"]),
        .library(
            name: "AnimationView",
            targets: ["AnimationView"]),
        .library(
            name: "NavRouter",
            targets: ["NavRouter"]),
        .library(
            name: "ModalManager",
            targets: ["ModalManager"]),
        .library(
            name: "NetworkManager",
            targets: ["NetworkManager"]),
        .library(
            name: "PermissionManager",
            targets: ["PermissionManager"]),
        .library(
            name: "PollingCenter",
            targets: ["PollingCenter"]),
        .library(
            name: "StepView",
            targets: ["StepView"]),
        .library(
            name: "Utils",
            targets: ["Utils"]),
        .library(
            name: "Banner",
            targets: ["Banner"]),
        .library(
            name: "CryptoUtils",
            targets: ["CryptoUtils"]),
        .library(
            name: "Log",
            targets: ["Log"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/Alamofire/Alamofire.git",
                 .upToNextMajor(from: "5.0.0")),
        .package(
          url: "https://github.com/apple/swift-collections.git",
          .upToNextMajor(from: "1.0.4") // or `.upToNextMinor
        ),
        .package(
          url: "https://github.com/onevcat/Kingfisher",
          .upToNextMajor(from: "7.6.2") // or `.upToNextMinor
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "KtSwiftPackage",
            dependencies: [],
            path: "CoreOnly/Sources"
        ),
        .target(
            name: "IndexedScrollView",
            dependencies: [
                .product(name: "Collections", package: "swift-collections")
            ],
            path: "IndexedScrollView/Sources"
        ),
        .target(
            name: "AnimationView",
            dependencies: [],
            path: "AnimationView/Sources"
        ),
        .target(
            name: "NavRouter",
            dependencies: [], path: "NavRouter/Sources"),
        .target(
            name: "ModalManager",
            dependencies: [], path: "ModalManager/Sources"),
        .target(
            name: "NetworkManager",
            dependencies: [
                "Alamofire",
            ], path: "NetworkManager/Sources"),
        .target(
            name: "PermissionManager",
            dependencies: [],path: "PermissionManager/Sources"),
        .target(
            name: "PollingCenter",
            dependencies: [],path: "PollingCenter/Sources"),
        .target(
            name: "StepView",
            dependencies: [],path: "StepView/Sources"),
        .target(
            name: "Utils",
            dependencies: [], path: "Utils/Sources"),
        .target(
            name: "Banner",
            dependencies: [
                "Utils",
                "Kingfisher"
            ],
            path:"Banner/Sources"
        ),
        .target(name: "CryptoUtils",
                path:"CryptoUtils/Sources"),
        .target(name: "Log",
                path:"Log/Sources"),
    ]
)
