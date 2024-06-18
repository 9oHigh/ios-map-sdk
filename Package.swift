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
            url: "https://github.com/9oHigh/ios-map-sdk/releases/download/v3.18.1/NMapsMap.xcframework.zip",
            checksum: "bdcafdf8b01ac672c5727589c5ba162ccf09e75329937975e6bdd159aa79c6dc"
        ),
        .binaryTarget(
            name: "NMapsGeometry",
            url: "https://github.com/9oHigh/ios-map-sdk/releases/download/v3.18.1/NMapsGeometry.xcframework.zip",
            checksum: "67ef40f38b9dd1678c25025afe305b3300c60386040a20368a7531058d483455"
        ),
    ]
)
