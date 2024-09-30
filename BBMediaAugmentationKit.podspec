
Pod::Spec.new do |spec|

  spec.name         = "BBMediaAugmentationKit"
  spec.version      = "1.0.12"
  spec.summary      = "A short description of BBMediaKit."

  spec.description  = <<-DESC
			Internal library for augmenting advertisements.
                   DESC

  spec.homepage     = "https://github.com/TGITech/BBMediaKit"

  spec.license      = { :type => "MIT", :file => "LICENSE.txt" }

  spec.author    = "TGI Tech"

  spec.platform     = :ios
  spec.ios.deployment_target = '14.0'

  spec.source       = { :git => "https://github.com/TGITech/BBMediaKit.git", :tag => "#{spec.version}" }

  spec.source_files  = 'Sources', 'Sources/**/*'

  spec.vendored_frameworks = 'Frameworks/BBMediaKit.xcframework'
  
  spec.dependency 'ZIPFoundation', '~> 0.9'

end
