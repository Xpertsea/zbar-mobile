# zbar-mobile
 
Pre-compiled shared libraries for the ZBar library for common mobile architectures.

From https://github.com/yanzhenjie/android-zbar-sdk

## Instructions for iOS

To build libzbar.a with bitcode enabled for standard 64bit architectures, follow these instructions:

1. Clone the zbar repository:
```
git clone git@github.com:mchehab/zbar.git
cd zbar 
hg checkout 0.23.1
```
3. Open `iphone/zbar.xcodeproj` in Xcode.  For target libzbar.a, make sure `Architectures` is set to `Standard architectures - $(ARCHS_STANDARD)` and `Enable Bitcode` is set to `Yes`.

4. Save and close project. In the same folder as `zbar.xcodeproj`, copy the `scripts/ios_build.sh` script provided in this repository and run it. This will build `libzbar.a` for 64 bit architectures with bitcode enabled.
```
sh ios_build.sh
```

References:
- https://github.com/null09264/ZBarSDK-for-iOS
- http://www.saturngod.net/articles/enable-bitcode-in-library-file/

