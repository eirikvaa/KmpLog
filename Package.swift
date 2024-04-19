// swift-tools-version:5.9
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/KmpLog/com/airthings/lib/kmplog-kmmbridge/0.2.6-spm.3.0/kmplog-kmmbridge-0.2.6-spm.3.0.zip"
let remoteKotlinChecksum = "7b4433789011c47c44c40480e27d1fbed9e903c73ec8509aff4f732796c085ce"
let packageName = "KmpLog"
// END KMMBRIDGE BLOCK

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v14)
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