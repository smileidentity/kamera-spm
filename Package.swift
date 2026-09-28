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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.13/Kamera.xcframework.zip",
      checksum: "a988285a05f2a6ede45f785ce45454fe3e34dc041c97544cddfea1370e8c3d13"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.13/KameraVision.xcframework.zip",
      checksum: "d5a200e291e9647d65527024821442af50de2072d38e2012411e7e4c85cf1405"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.13/KameraTesting.xcframework.zip",
      checksum: "9cec2a5229efab1276bcd62efce8deb6af9838f00ad3c00966fdb4f6718b6232"
    ),
  ]
)
