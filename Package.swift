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
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "0f2d4ca3e8db2836b3dcb3787965e352d3a4f1ab2a4202c645b1cf71ff0ea8e6"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "8a5aebb276fbd1b7467100a7d09dc37b35ec8052706cc2e26db941df5147e61d"
        )
    ]
)
