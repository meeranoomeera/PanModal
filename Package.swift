// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PanModal",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "PanModal",
            targets: ["PanModal"]
        ),
//         .library(
//             name: "PanModal", 
//             type: .dynamic, 
//             targets: ["PanModal"]
//         ),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Kingfisher", from: "7.7.0"),
        .package(url: "https://github.com/airbnb/lottie-spm.git", from: "4.1.3"),
    ],
    targets: [
        .target(
            name: "PanModal",
            dependencies: [
                .product(name: "Kingfisher", package: "Kingfisher"),
                .product(name: "Lottie", package: "lottie-spm"),
            ],
            path: "PanModal")
    ],
    swiftLanguageVersions: [.version("5.0")]
)
