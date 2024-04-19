// swift-tools-version:5.9
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/KmpLog/com/airthings/lib/kmplog-kmmbridge/0.2.6-spm.1.0/kmplog-kmmbridge-0.2.6-spm.1.0.zip"
let remoteKotlinChecksum = "e6d849f422e8fd2a411f89085dfd8fc79f662307b94eb9ce66f97ba212e52338"
let packageName = "KmpLog"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15.0)
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