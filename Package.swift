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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.10/Kamera.xcframework.zip",
      checksum: "5167709b1fb5a05ac0a699f79b475bfe29bb5b15ad624b74b019e7df26ddf9d2"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.10/KameraVision.xcframework.zip",
      checksum: "560ea9247a4d1222fe1fd48da8b2fbfa480ad1a4f54a8b37e93ab72024b2bc3c"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.10/KameraTesting.xcframework.zip",
      checksum: "e5d59800f7349d7c0412f6df8a829da733c0a373ee2e49a5e6218be192739581"
    ),
  ]
)
