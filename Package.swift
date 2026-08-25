// swift-tools-version: 5.9
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
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.0-beta1/Kamera.xcframework.zip",
      checksum: "211c40c7aa23a26e9ac58def009cf544fd3555d784785c7806467d449a02f155"
    ),
    .binaryTarget(
      name: "KameraVision",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.0-beta1/KameraVision.xcframework.zip",
      checksum: "d7ad9bf6d00b0d3433a29bb962db3e5e48898b28970e148f379922b4b67ba8c8"
    ),
    .binaryTarget(
      name: "KameraTesting",
      url: "https://github.com/smileidentity/kamera-spm/releases/download/v1.0.0-beta1/KameraTesting.xcframework.zip",
      checksum: "74bf78a09365cfc9a04073f706be04b9962bbd69940ac91cd86769afc5594329"
    ),
  ]
)
