# kamera — Swift Package

[![Release](https://img.shields.io/github/v/release/smileidentity/kamera-spm?label=release&logo=swift&logoColor=white&color=success)](https://github.com/smileidentity/kamera-spm/releases/latest)
[![Snapshot](https://img.shields.io/github/v/release/smileidentity/kamera-spm?include_prereleases&sort=date&label=snapshot&logo=github&logoColor=white&color=blue)](https://github.com/smileidentity/kamera-spm/releases)
[![iOS](https://img.shields.io/badge/iOS-15.0%2B-blue?logo=apple&logoColor=white)](#requirements)
[![Swift](https://img.shields.io/badge/Swift-6.0%2B-F05138?logo=swift&logoColor=white)](#requirements)
[![Xcode](https://img.shields.io/badge/Xcode-16%2B-147EFB?logo=xcode&logoColor=white)](#requirements)

Swift Package Manager distribution for **kamera**, the camera engine behind the Smile ID SDKs.
This repository hosts the `Package.swift` manifest and the pre-built XCFramework binaries.

kamera drives the AVFoundation capture pipeline — preview, throttled analysis with
keep-only-latest backpressure, and still capture with observable mode fallbacks — behind one
`KameraSession`.

> **Generated, not hand-edited.** This manifest is regenerated on every release, so a manual
> change here is replaced by the next one.

## Requirements

- iOS 15.0+
- Swift 6.0+ (Xcode 16+)

## Installation

### Swift Package Manager

In Xcode, choose **File → Add Package Dependencies…** and enter:

```
https://github.com/smileidentity/kamera-spm
```

Or add it to your own `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/smileidentity/kamera-spm", exact: "1.0.0-beta1")
]
```

Then add the `Kamera` product to your target's dependencies.

> **Pre-release builds:** to track the rolling snapshot instead of a tagged release, depend on the
> `snapshot` branch:
>
> ```swift
> .package(url: "https://github.com/smileidentity/kamera-spm", branch: "snapshot")
> ```

## Products

| Product | Use it for |
|---------|------------|
| `Kamera` | The camera engine — session, preview, frame stream, capture. Start here. |
| `KameraVision` | Apple Vision analyzer adapter. Separate so non-ML consumers pay zero bytes. |
| `KameraTesting` | Replay test kit — drives recorded fixtures through the real pipeline. Test targets and sample apps only, never a release graph. |

Binary targets carry no dependency edges of their own, so `KameraVision` and `KameraTesting` each
pull `Kamera` in through their product definition.

```swift
import Kamera
```

## Versioning

kamera ships every platform package at a single version, so a version here is the same version
published for Android, Flutter and React Native:

| Platform | Coordinate |
|----------|------------|
| iOS | this package |
| Android | `com.usesmileid:kamera` (Maven Central) |
| Flutter | `kamera_flutter` (pub.dev) |
| React Native | `@smileid/kamera` (npm) |

| Branch | Holds |
|--------|-------|
| `main` | production releases |
| `snapshot` | snapshots and betas |

## Documentation

Integration guides and API documentation are available in the
[Smile ID documentation](https://docs.usesmileid.com).

## License

Released under the MIT License. See [LICENSE](LICENSE).
