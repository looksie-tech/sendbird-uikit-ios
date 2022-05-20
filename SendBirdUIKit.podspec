Pod::Spec.new do |s|
	s.name         = "SendBirdUIKit"
	s.version      = "v2.1.142"
	s.summary      = "UIKit based on SendBirdSDK"
	s.description  = "SendBird UIKit is a framework composed of basic UI components based on SendBirdSDK."
	s.homepage     = "https://sendbird.com"
	s.documentation_url = 'https://sendbird.com/docs/uikit'
	s.license      = "Commercial"
	s.authors      = {
	"Jaesung Lee" => "jaesung.lee@sendbird.com",
	"Tez" => "tez.park@sendbird.com"
  	}
	s.platform     = :ios, "11.0"
	s.source = { :git => "https://github.com/sendbird/sendbird-uikit-ios.git", :tag => "v#{s.version}" }
	s.ios.vendored_frameworks = 'Framework/SendBirdUIKit.xcframework'
	s.ios.frameworks = ["UIKit", "Foundation", "CoreData", "SendBirdSDK"]
	s.requires_arc = true
	s.dependency "SendBirdSDK", "~>3.0.226"
	s.ios.library = "icucore"
	s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
	s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
