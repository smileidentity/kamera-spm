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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.11/Kamera.xcframework.zip",
      checksum: "43974dfbd632f448ee900cfdd58b15bfcc767bd6b1eae8b3b40e3475d9fc4207"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.11/KameraVision.xcframework.zip",
      checksum: "e18e73a2bf3bd2f16598d834d1c060d74e0c1175ff282bc7409ec303236dd3ba"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.7-SNAPSHOT.11/KameraTesting.xcframework.zip",
      checksum: "c1a8d3896c3283c124da4f272c713ab11fc635fd9a91965f60191e7eda9c7dff"
    ),
  ]
)
