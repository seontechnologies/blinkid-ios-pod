Pod::Spec.new do |s|
  s.name         = "PPBlinkID"
  s.version      = "7.3.0"
  s.summary      = "Microblink BlinkID iOS SDK"
  s.summary     = 'Unofficial CocoaPods wrapper for the BlinkID SDK.'
  s.description = <<-DESC
This CocoaPods spec is an unofficial integration helper for BlinkID. 
All rights to the BlinkID SDK remain with Microblink. 
You must obtain a valid license key from Microblink to use this SDK.
DESC
  s.homepage     = "https://github.com/BlinkID/blinkid-ios"
  s.license      = { :type => 'Commercial', :text => 'SEE LICENSE IN LICENSE.md' }
  s.author       = { "Microblink" => "support@microblink.com" }
  s.platform     = :ios, "16.0"
  s.source       = {
    :http => "https://github.com/BlinkID/blinkid-ios/archive/refs/tags/v7.3.0.tar.gz"
  }
  s.swift_version  = '5.0'
  s.requires_arc = true
  s.vendored_frameworks = [
    'Frameworks/BlinkID.xcframework'
  ]

  s.prepare_command = <<-CMD
    echo "Preparing BlinkID..."
    echo "🔧 Preparing BlinkID..."
  
    echo "📍 Current working directory:"
    pwd
  
    echo "📂 Listing files in current directory:"
    ls -la

    echo "📁 Copying BlinkID.xcframework from Frameworks to root..."
    cp -R Frameworks/BlinkID.xcframework BlinkID.xcframework

    echo "✅ Copy complete. Verifying BlinkID.xcframework contents:"
    ls -la BlinkID.xcframework || echo "⚠️ BlinkID.xcframework not found!"
  CMD
end