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
            url: "https://github.com/9oHigh/ios-map-sdk/releases/download/v3.18.3/NMapsMap.xcframework.zip",
            checksum: "bdcafdf8b01ac672c5727589c5ba162ccf09e75329937975e6bdd159aa79c6dc"
        )
    ]
)
