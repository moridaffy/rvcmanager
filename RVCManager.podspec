#
#  Be sure to run `pod spec lint RVCManager.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.platform = :ios
  spec.ios.deployment_target = '12.0'
  spec.name         = "RVCManager"
  spec.summary      = "RVCManager lets you quickly change your rootViewController with simple animations"
  spec.requires_arc = true

  spec.version      = "0.1.0"

  spec.license = { :type => "MIT", :file => "LICENSE" }

  spec.author = { "Maxim Skryabin" => "dev@mskr.name" }

  spec.homepage     = "https://github.com/moridaffy/rvcmanager"

  spec.source = { :git => "https://github.com/moridaffy/rvcmanager.git",
                  :tag => "#{spec.version}" }

  spec.framework = "UIKit"

  spec.source_files = "Sources/**/*.{swift}"
  spec.resources = "Sources/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  spec.swift_version = "4.2"
end
