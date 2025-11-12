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
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2-xcode/Libssl.xcframework.zip",
            checksum: "91e51c9d6bfc5c0eabe18ab8351b673e285f56e16a4924b38f500dfcce345003"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2-xcode/Libcrypto.xcframework.zip",
            checksum: "f0ecf1ce2006bcdfe2ce5878ac985745d0435bb3fef352109ceb0c2fe942e1e5"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
