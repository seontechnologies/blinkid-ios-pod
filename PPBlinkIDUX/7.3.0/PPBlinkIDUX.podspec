Pod::Spec.new do |s|
  s.name         = "PPBlinkIDUX"
  s.version      = "7.3.0"
  s.summary      = "Microblink BlinkIDUX iOS SDK"
  s.summary     = 'Unofficial CocoaPods wrapper for the BlinkIDUX SDK.'
  s.description = <<-DESC
This CocoaPods spec is an unofficial integration helper for BlinkID. 
All rights to the BlinkIDUX SDK remain with Microblink. 
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

  s.module_name = 'BlinkIDUX'
  s.source_files = 'Source/**/*.swift', 'Source/**/*.h'
  s.public_header_files = 'Source/**/*.h'
  s.module_map = 'Source/BlinkIDUX/BlinkIDUX.modulemap'

  s.vendored_frameworks = [
    'Frameworks/BlinkID.xcframework'
  ]

  s.resources = ['Source/**/*.xcassets', 'Source/**/*.xcstrings']

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