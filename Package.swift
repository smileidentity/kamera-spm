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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.26/Kamera.xcframework.zip",
      checksum: "a927f60990b140d77c8458884885e55f15c4f1a1555e3bf8f8bea6f2ba3e8d1d"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.26/KameraVision.xcframework.zip",
      checksum: "bfb16e0868dcd65ad9e2bd9be6c7ef57cedbddd97d416a137667acc11dba78a0"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.26/KameraTesting.xcframework.zip",
      checksum: "7c4cf7c77f52f3dfce7e7225a51d26f5e5f431b097ce59b5f4c0b8e5424c43d8"
    ),
  ]
)
