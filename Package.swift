// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "NMapsMap",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "NMapsMap",
            targets: ["NMapsMap"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "NMapsMap",
            url: "https://github.com/navermaps/ios-map-sdk/releases/download/3.18.1/NMapsMap.xcframework.zip",
            checksum: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            url: "https://github.com/navermaps/ios-map-sdk/releases/download/3.18.1/NMapsGeometry.xcframework.zip",
            checksum: "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
        ),
    ]
)
