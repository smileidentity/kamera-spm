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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.42/Kamera.xcframework.zip",
      checksum: "6ee5be8d505100d9828da3fcad563c32bbd8e48c7e907166aa2e65e0f767367a"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.42/KameraVision.xcframework.zip",
      checksum: "531807521a0c771ea7c8c68a10d09d03d735204f1ace65ce8c679b3bfe2271af"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.42/KameraTesting.xcframework.zip",
      checksum: "f73545bd007ee8b8f19847e929ab395b09b18cdfadd10b0edb3b3eaa5df60117"
    ),
  ]
)
