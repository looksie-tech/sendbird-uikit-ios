Pod::Spec.new do |s|
	s.name         = "SendBirdUIKit"
	s.version      = "2.2.6.2"
	s.summary      = "UIKit based on SendBirdSDK"
	s.description  = "SendBird UIKit is a framework composed of basic UI components based on SendBirdSDK."
	s.homepage     = "https://sendbirdcom"
	s.documentation_url = 'https://sendbird.com/docs/uikit'
	s.license      = "Commercial"
	s.authors      = {
	"Jaesung Lee" => "jaesung.lee@sendbird.com",
	"Tez" => "tez.park@sendbird.com"
  	}
	s.platform     = :ios, "11.0"
	s.swift_version = '5'
	s.source = { :git => "https://github.com/looksie-tech/sendbird-uikit-ios", :tag => "v#{s.version}" }
	# s.ios.vendored_frameworks = 'Framework/SendBirdUIKit.xcframework'
	s.source_files = 'Sources/*'
	s.ios.frameworks = ["UIKit", "Foundation", "CoreData", "SendBirdSDK"]
	s.requires_arc = true
	s.dependency "SendBirdSDK", "~>3.1.7"
	s.ios.library = "icucore"
end
