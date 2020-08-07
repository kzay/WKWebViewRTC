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
        // no dependencies
    ],
    targets: [
        .target(
            name: "WKWebViewRTC",
            path: "WKWebViewRTC",
            dependencies: ["GoogleWebRTC"]),
        .testTarget(
            name: "WKWebViewRTCTests",
            dependencies: ["WKWebViewRTC"]),
    ]
)
