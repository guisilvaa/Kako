#
#  Be sure to run `pod spec lint Kako.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  spec.name         = "Kako"
  spec.version      = "0.0.1"
  spec.summary      = "Kako is a network layer."

  
  spec.description  = <<-DESC
   Kako is a network layer to handle service calls using Moya.
                   DESC

  spec.homepage     = "https://github.com/guisilvaa/Kako"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"

  spec.license      = "MIT"
  

  spec.author       = { "Guilherme Silva" => "gui.shevs@gmail.com" }

  spec.platform     = :ios
  spec.swift_versions = "5.2"

  spec.ios.deployment_target = '11.0'

  spec.requires_arc     = true

  spec.source       = { :git => "https://github.com/guisilvaa/Kako.git", :tag => "#{spec.version}" }

  spec.source_files = "Kako/**/*.{swift}"

  #spec.resources = "Kako/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  spec.exclude_files = "Classes/Exclude"

  spec.dependency 'Moya'
  spec.dependency 'KeychainAccess'
  spec.dependency 'ObjectMapper'
  spec.dependency 'ReachabilitySwift'

end
