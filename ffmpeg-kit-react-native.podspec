require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "ffmpeg-kit-react-native"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.authors      = package["author"]

  s.platform          = :ios
  s.requires_arc      = true
  s.static_framework  = true

  # s.source       = { :git => "https://github.com/userkr/ffmpeg-kit-react-native.git", :tag => "react.native.v#{s.version}" }

  # s.default_subspec   = 'https'

  s.source = {
    :http => "https://github.com/userkr/ffmpeg-kit/releases/download/Latest/ffmpeg-kit-https-6.0-ios-xcframework.zip"
  }

  s.dependency "React-Core"

  s.vendored_frameworks = "ffmpegkit.xcframework"

  s.source_files = [
    "ios/FFmpegKitReactNativeModule.m",
    "ios/FFmpegKitReactNativeModule.h"
  ]
  # s.subspec 'https' do |ss|
  #     ss.source_files      = '**/FFmpegKitReactNativeModule.m',
  #                            '**/FFmpegKitReactNativeModule.h'
  #     ss.dependency 'ffmpeg-kit-https', "1.0"
  #     ss.ios.deployment_target = '12.1'
  # end
end
