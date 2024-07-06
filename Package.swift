// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
    products: [
        .library(name: "Libssl", targets: ["Libssl"]),
        .library(name: "Libcrypto", targets: ["Libcrypto"])
    ],
    targets: [
        .executableTarget(
            name: "build",
            path: "scripts",
            exclude:["patch"]
        ),
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "ee47164af7db6d1e03bcdd63793dbbd839d910dcaa88f30c77dc689eb9a8c938"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "a1a1b853e167721137b4d4551af1abaece462c1cfcc7732b904afcea602c913c"
        )
    ]
)
