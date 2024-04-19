// swift-tools-version:5.9
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/KmpLog/com/airthings/lib/kmplog-kmmbridge/0.2.6-spm.2.0/kmplog-kmmbridge-0.2.6-spm.2.0.zip"
let remoteKotlinChecksum = "6423f9c392ff35bea4a0c80abf7c2b091a24aa68b83f2180d294d01f22f482e8"
let packageName = "KmpLog"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v15)
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