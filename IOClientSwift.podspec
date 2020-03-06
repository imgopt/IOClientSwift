Pod::Spec.new do |spec|
  spec.name         = "IOClientSwift"
  spec.version      = "1.0.0"
  spec.summary      = "ImageOpt client library for iOS and tvOS"
  spec.description  = <<-DESC
	imageOpt client library, to construct parameterized imageOpt URL from plain image URL
                   DESC
  spec.homepage     = "https://github.com/imgopt/IOClientSwift"
  spec.license      = "MIT"
  spec.author             = { "Bhavesh Bhojani" => "bhavesh@imageopt.com" }
  spec.ios.deployment_target = "9.0"
  spec.tvos.deployment_target = "9.0"
  spec.swift_versions = "5"
  spec.source       = { :git => "https://github.com/imgopt/IOClientSwift.git", :tag => "#{spec.version}" }
  spec.source_files  = "Sources/*.swift"
  spec.deprecated_in_favor_of = "imageOptClient"
end
