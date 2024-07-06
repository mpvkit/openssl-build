import Foundation

do {
    try Build.performCommand(arguments: Array(CommandLine.arguments.dropFirst()))
    try BuildOpenSSL().buildALL()
} catch {
    print(error.localizedDescription)
    exit(0)
}


enum Library: String, CaseIterable {
    case openssl
    var version: String {
        switch self {
        case .openssl:
            return "openssl-3.2.0"
        }
    }

    var url: String {
        switch self {
        case .openssl:
            return "https://github.com/openssl/openssl"
        }
    }
}


private class BuildOpenSSL: BaseBuild {
    init() {
        super.init(library: .openssl)
    }

    override func frameworks() throws -> [String] {
        ["libssl", "libcrypto"]
    }

    override func arguments(platform: PlatformType, arch: ArchType) -> [String] {
        let array = [
            "--prefix=\(thinDir(platform: platform, arch: arch).path)",
            "no-async", "no-shared", "no-dso", "no-engine", "no-tests",
            arch == .x86_64 ? "darwin64-x86_64" : arch == .arm64e ? "iphoneos-cross" : "darwin64-arm64",
        ]
        // if [PlatformType.tvos, .tvsimulator, .watchos, .watchsimulator].contains(platform) {
        //     array.append("-DHAVE_FORK=0")
        // }
        return array
    }
}
