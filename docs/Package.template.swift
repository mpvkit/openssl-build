// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
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
