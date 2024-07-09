// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(name: "openssl", targets: ["Libssl", "Libcrypto"]),
    ],
    targets: [
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "f8f532a477d079c3d769fdfd837662ab262c168a98398133a9e97e7ac5ea09d2"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "347dadacfb16d1109728fec2a874399edab95bbc65143b535ee030cc4a0c07b2"
        )
    ]
)
