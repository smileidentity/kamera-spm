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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.41/Kamera.xcframework.zip",
      checksum: "3f82dca04fe279b46a6b67603ffb03ca3436cc126e826192958d276962a39be7"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.41/KameraVision.xcframework.zip",
      checksum: "c5473c05dff0e94ed589ffb179a7d7c8a96b25de2cad37c9ca383c84021db672"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.3.1-SNAPSHOT.41/KameraTesting.xcframework.zip",
      checksum: "d504ca9e5fbd689dd3a04f8149dc07faef49985c118823f84cd4f3a31523e001"
    ),
  ]
)
