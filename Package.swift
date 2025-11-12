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
            checksum: "177cdd6abe6d84d2cd35ee1dd6669a2eb4ccd503a5b577c5ea58c66a4f3abc15"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2-xcode/Libcrypto.xcframework.zip",
            checksum: "42bf8f25f8556c16633d0279f54eabf75e40e93c03793c3af0c20b928fe29a49"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
