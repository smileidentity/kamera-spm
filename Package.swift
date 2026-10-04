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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.9/Kamera.xcframework.zip",
      checksum: "b38a40bace1c246022583cbb2558febfe88c11c8d8cf92e3f436613656631624"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.9/KameraVision.xcframework.zip",
      checksum: "c72483643ecc1098710f584cbd9090e03c0319413b1f6710e9a3162e390174b5"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.1.1-SNAPSHOT.9/KameraTesting.xcframework.zip",
      checksum: "149c5871d67da18a61c21e0b6b83dc2022349a6fb90f4deb0ce8f6119a113240"
    ),
  ]
)
