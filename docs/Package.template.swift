// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
    products: [
        .library(name: "openssl", targets: ["openssl"]),
    ],
    targets: [
        .target(
            name: "openssl",
            dependencies: [
                "Libssl", "Libcrypto"
            ]
        ),
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
