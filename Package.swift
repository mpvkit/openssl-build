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
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2-xcode26/Libssl.xcframework.zip",
            checksum: "94e062961b5c666d4bbcc94c64b59063750e2711fe330448b8db9ee4e7c5648c"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2-xcode26/Libcrypto.xcframework.zip",
            checksum: "0fa8ce35acdfd646413c657f8e31ee00da10517934e9fcdf2eac3299ae3ea6cb"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
