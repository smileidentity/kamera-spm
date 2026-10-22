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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.32/Kamera.xcframework.zip",
      checksum: "9ff83b26671c3bc856fa52832a33d4da24a55792b8b21010ebd6ff710de3cd6a"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.32/KameraVision.xcframework.zip",
      checksum: "8ea1d4c718521273331a534950cbc8bd2ef5d5a11efae127a087905c1c0d587a"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.32/KameraTesting.xcframework.zip",
      checksum: "360ce156af8576c56a82b2eb94cb729f080aae8f18494de2b1d9b8599b132b98"
    ),
  ]
)
