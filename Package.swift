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
            checksum: "b50f357a8e06cb15520185ce0fc3b8f6c724052bf298cbf6e37cca2333cbd913"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.2.0/Libcrypto.xcframework.zip",
            checksum: "01150eec96e6fcc52558197858689d0fabc4add6b6cdc2bf43975fdd08b35952"
        )
    ]
)
