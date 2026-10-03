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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.6/Kamera.xcframework.zip",
      checksum: "de6f96e92bbd6f3fbdfeae0f735f958ee185a7e5827e19d6ef35e34b1e79d95c"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.6/KameraVision.xcframework.zip",
      checksum: "68a41c464d8a026c75d0db6aa95eb1883f0aea348bab1941eb187f4b1c41baf8"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.6/KameraTesting.xcframework.zip",
      checksum: "7170f604ac6e2723a16fb9d8e104942824e479a9de2f3a8a7f3c3c2d77dbbb54"
    ),
  ]
)
