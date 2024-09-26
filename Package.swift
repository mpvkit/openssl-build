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
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2/Libssl.xcframework.zip",
            checksum: "9da5f7854b3f839aca42ddda4a82ea0c7e5f5428c6702691226a0e6669c4e521"
        ),
        .binaryTarget(
            name: "Libcrypto",
            url: "https://github.com/mpvkit/openssl-build/releases/download/3.3.2/Libcrypto.xcframework.zip",
            checksum: "326d8e86e6b8708ae79af44302cad7585dc213acef15ba97277e50f163a36946"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
