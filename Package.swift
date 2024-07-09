// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
    products: [
        .library(
            name: "openssl",
            targets: ["Libssl", "Libcrypto"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libssl.xcframework.zip",
            checksum: "adb7f66ed10e645064a4e557b6370fb9145ee38f5b31fe97e4b2a6fce5f63f29"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "e97484d2e02be6e39389be54b7dfbe735e5ed77fa27d6d30e6df66e6fdc168ac"
        )
    ]
)
