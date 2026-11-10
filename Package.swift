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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.38/Kamera.xcframework.zip",
      checksum: "9e60bd9cbe587d36127c5c843e176221b28a40e142084bb920ea2f764ecb346d"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.38/KameraVision.xcframework.zip",
      checksum: "95e27f1e0f3b22eff07b24694041173ab9bbb471c0514fc46f2ab85f6957f939"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.38/KameraTesting.xcframework.zip",
      checksum: "df2c3097c4c3bab8e5a97873a075abb8f89aa6133b6a400ab11abd133c3239b6"
    ),
  ]
)
