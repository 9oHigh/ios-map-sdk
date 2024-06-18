// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NaverMapsSDK",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        .library(
            name: "NMapsMap",
            targets: ["NMapsMap"]
        ),
        .library(
            name: "NMapsGeometry",
            targets: ["NMapsGeometry"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/navermaps/ios-map-sdk.git", .branch("master"))
    ],
    targets: [
        .target(
            name: "NMapsMap",
            dependencies: ["NMapsGeometry"]
        ),
        .target(
            name: "NMapsGeometry",
            dependencies: []
        )
    ]
)
