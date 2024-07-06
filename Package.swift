// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "openssl",
    products: [
    ],
    targets: [
        .executableTarget(
            name: "build",
            path: "scripts",
            exclude:["patch"]
        )
    ]
)
