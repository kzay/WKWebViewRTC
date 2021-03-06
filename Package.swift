// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "WKWebViewRTC",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "WKWebViewRTC",
            targets: ["WKWebViewRTC"]),
    ],
    dependencies: [
        .package(url:"https://github.com/bighitbiker3/GoogleWebRTC", .branch("master"))
    ],
    targets: [
        .target(
            name: "WKWebViewRTC",
            dependencies: ["GoogleWebRTC"],
            path: "WKWebViewRTC"),
        .testTarget(
            name: "WKWebViewRTCTests",
            dependencies: ["WKWebViewRTC"]),
    ]
)
