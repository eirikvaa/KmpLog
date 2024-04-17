// swift-tools-version:5.3
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/Airthings/KmpLog/com/airthings/lib/kmplog-kmmbridge/0.2.6-spm.0/kmplog-kmmbridge-0.2.6-spm.0.zip"
let remoteKotlinChecksum = "805bf0db45f311e55604dc68e8cd752f16056773bf49297b7de24a62681c5d49"
let packageName = "KmpLog"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)