// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(name: "openssl", targets: ["_openssl"]),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_openssl",
            dependencies: ["Libssl", "Libcrypto"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//

        .binaryTarget(
            name: "Libssl",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.1/Libssl.xcframework.zip",
            checksum: "203e6e3774043650be324748986f6075cbde0e57bfe15abd52b3e5e6082852ed"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.1/Libcrypto.xcframework.zip",
            checksum: "7e9c2bfc498c7eb3b9f9b6c450945cab090e9f71f067faee52409a4dfbbb485f"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
