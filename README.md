## PPBlinkID/UX CocoaPods Wrapper

### Overview

This is a CocoaPods wrapper for the [Microblink BlinkID iOS SDK](https://github.com/BlinkID/blinkid-ios).

It integrates the BlinkID/UX SDK (originally distributed via Swift Package Manager) into iOS projects via CocoaPods. The only think which this repo is doing is to allow Cocoapods users to keep using official BlinkID/BlinkIDUX +7 versions on the SDKs based on Cocoapods.

⚠️ **Note:** You must obtain a valid license key from [Microblink](https://microblink.com) to use this SDK.

### Installation

To use this pod, add the following line to your `Podfile`:

```ruby
source 'https://github.com/seontechnologies/blinkid-ios-pod.git'
source 'https://cdn.cocoapods.org/'

target 'YOUR_TARGET' do 
    pod 'PPBlinkID', '7.3.0'
end
```

Then run:

```bash
pod install
```

### Requirements

- iOS 16.0 or later
- Swift 5.0+
- A valid BlinkID SDK license from Microblink

### Podspec Configuration

This podspec:
- Downloads BlinkID SDK +7 binary files directly from their official GitHub Releases
- Copies `BlinkID.xcframework` from the archive to the root
- Copies `BlinkIDUX` sources from the archive to the root
- Declares the vendored framework for CocoaPods compatibility


### License

This project wraps a commercial SDK. See `LICENSE.md` for terms and restrictions.  

All rights to BlinkID are owned by Microblink.

### Support

For BlinkID-related inquiries, visit [https://microblink.com](https://microblink.com) or contact Microblink at [support@microblink.com](mailto:support@microblink.com).
