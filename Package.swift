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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.16/Kamera.xcframework.zip",
      checksum: "26cc4e3d2bfc46b054996e1deabc3b280d44062647d13b88f8f78c5c6efe546b"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.16/KameraVision.xcframework.zip",
      checksum: "8d2b5089fc168b240fba79233316e31e634bb6150ff2d4c47400ad27c9aa677d"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.16/KameraTesting.xcframework.zip",
      checksum: "6694db143559e1179a515df821e7164851dd79e196757e77d134eea7dac49958"
    ),
  ]
)
