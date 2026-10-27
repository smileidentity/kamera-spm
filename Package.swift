// swift-tools-version: 6.0
// Generated — do not hand-edit.
//
// Every `url:` and `checksum:` below is rewritten on each release to point at that release's
// assets. Editing them here is pointless: the next release overwrites the file.
import PackageDescription

let package = Package(
  name: "Kamera",
  // iOS only: the shipped xcframeworks carry device + simulator slices.
  platforms: [
    .iOS(.v15)
  ],
  products: [
    .library(name: "Kamera", targets: ["Kamera"]),
    // Vision adapter — a separate product so non-ML consumers pay zero bytes.
    // Binary targets carry no dependency edges of their own, so each product names the
    // transitive set explicitly.
    .library(name: "KameraVision", targets: ["KameraVision", "Kamera"]),
    // Replay test kit. Test-scoped: consumed by test targets and sample apps, never a
    // partner's release graph.
    .library(name: "KameraTesting", targets: ["KameraTesting", "Kamera"]),
  ],
  targets: [
    .binaryTarget(
      name: "Kamera",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.35/Kamera.xcframework.zip",
      checksum: "2f7b50db24a9c44712fbfcbbe6126b6b7b6f961cad4cd409fd1d3acfa3ddeefd"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.35/KameraVision.xcframework.zip",
      checksum: "442cfb3db9899d05466d5fa5b47a9793433a5d420d432c8986b2e70bb3b0c133"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.35/KameraTesting.xcframework.zip",
      checksum: "db1cab2db5a9793d9343e2478ba97a0e82f3b97368170d94c572d67c2d6080ef"
    ),
  ]
)
