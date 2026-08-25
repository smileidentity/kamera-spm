# kamera-spm

Swift Package Manager distribution for [kamera](https://github.com/smileidentity/kamera).

This repository holds **no source**. It is a thin `Package.swift` whose binary targets point at
xcframework zips attached to this repo's releases. Both the manifest and the releases are produced
by kamera's `kamera-ios/Scripts/publish_spm.sh` — nothing here is hand-edited, and a manual change
is overwritten by the next publish.

## Consuming

```swift
.package(url: "https://github.com/smileidentity/kamera-spm", exact: "<version>")
```

Products:

| Product | Contents |
| --- | --- |
| `Kamera` | the camera stack (AVFoundation only) |
| `KameraVision` | Vision adapter — separate so non-ML consumers pay zero bytes |
| `KameraTesting` | replay test kit; test targets and sample apps only, never a release graph |

## Branches

| Branch | Holds |
| --- | --- |
| `main` | production releases |
| `snapshot` | snapshots and betas |

Mirrors [`ios-spm`](https://github.com/smileidentity/ios-spm), the same split the v12 iOS SDK uses.

## Versions

Until the first publish runs, the manifest carries placeholder URLs pointing at a `v0.0.0` tag
that does not exist, and zeroed checksums. Resolving the package before then will fail — by
design, so an unpublished manifest cannot be mistaken for a usable one.
