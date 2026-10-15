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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.22/Kamera.xcframework.zip",
      checksum: "353fc5cb23a23f4601b004d5fba12ae8e765d21da532fa6f433d35734b5d6ef6"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.22/KameraVision.xcframework.zip",
      checksum: "30b5bb8259e02f84f6257584520a57c6adabb2398c7b487c4707ae6b58fab703"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.2.1-SNAPSHOT.22/KameraTesting.xcframework.zip",
      checksum: "443dcee3ba9c7c64ec0f2ee5dfda06ad77a097009ab88c23befc0f47b0f9928f"
    ),
  ]
)
