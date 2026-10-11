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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.19/Kamera.xcframework.zip",
      checksum: "457a428e8f4934019f05bd0136583caec7c9ae429a2d3a4ff2883509f73beb8a"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.19/KameraVision.xcframework.zip",
      checksum: "f81cded6785dc3b7844db0245cad56fd88ea15b9c3c02b5de616ca7238394f91"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.19/KameraTesting.xcframework.zip",
      checksum: "bb9b4c52b074ca22af0c02832b44c68c9e5f7bf38ad245624ba83c202d60ba0a"
    ),
  ]
)
