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
            url: "\(Libssl_url)",
            checksum: "\(Libssl_checksum)"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "\(Libcrypto_url)",
            checksum: "\(Libcrypto_checksum)"
        )
    ]
)
