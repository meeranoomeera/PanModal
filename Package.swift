// swift-tools-version:5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PanModal",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "PanModal", 
            type: .dynamic, 
            targets: ["PanModal"]
        ),
    ],
    dependencies: [
        .package(url: "https://git.nomera.com/Deni/kingfisher-wrapper-ios", branch: "master"),
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.1.3"),
    ],
    targets: [
        .target(
            name: "PanModal",
            dependencies: [
                .product(name: "KingfisherWrapper", package: "kingfisher-wrapper-ios"),
                .product(name: "Lottie", package: "lottie-spm"),
            ],
            path: "PanModal")
    ],
    swiftLanguageVersions: [.version("5.7")]
)
