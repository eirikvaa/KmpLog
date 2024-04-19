// swift-tools-version:5.9
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://maven.pkg.github.com/eirikvaa/KmpLog/com/airthings/lib/kmplog-kmmbridge/0.2.6-spm.1.7/kmplog-kmmbridge-0.2.6-spm.1.7.zip"
let remoteKotlinChecksum = "57b4cef0cebc9895c9494d5fcae16093b06529ce662879771e91e56a6e59afcf"
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