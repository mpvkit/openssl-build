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
            url: "https://github.com/mpvkit/openssl-build/releases/download/0.0.1/Libssl.xcframework.zip",
            checksum: "4315b5bd4b878da0d7b94e4068a23a15f6153f91878ca438e54332469aaa6ec1"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/0.0.1/Libcrypto.xcframework.zip",
            checksum: "515d78187bd477d99f400e6d823def55df6144675e1a8d8ee43c61c4c92494c8"
        )
    ]
)
