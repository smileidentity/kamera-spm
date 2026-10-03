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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.7/Kamera.xcframework.zip",
      checksum: "4c036536b560c125c6462964a571864316329bbd8350e3e64d648fe8d4e67541"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.7/KameraVision.xcframework.zip",
      checksum: "de3f5587a246a09f57e32635fbe29ea1b02540986d3d02458c3e3ceef5d3f029"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.7/KameraTesting.xcframework.zip",
      checksum: "7e358bc9ad0d5ba791bd41077415ef64fb7e869b45e82dd3d6096f1a0571e2a2"
    ),
  ]
)
