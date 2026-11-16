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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.40/Kamera.xcframework.zip",
      checksum: "0b80da7ef10c08f0ab69a0f0e0cd07c1e7f38f4c0e211c0f9b693033de41860b"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.40/KameraVision.xcframework.zip",
      checksum: "1cbae03afa194193d49da642ca90d2e1800893467e8a50e021d9bc4f70f52f83"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.40/KameraTesting.xcframework.zip",
      checksum: "de1e7ea3cc62bc234058059cc3a338344fa4bd1c39fbcedfeb92ce6dbf395e39"
    ),
  ]
)
