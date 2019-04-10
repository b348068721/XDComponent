#
# Be sure to run `pod lib lint XDComponent.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XDComponent'
  s.version          = '1.1.3'
  s.summary          = 'try to new XDComponent.init controller with xib'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
'Component Test'
  DESC

  s.homepage         = 'https://github.com/b348068721/XDComponent'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'b348068721' => 'guanxidonghrb14@163.com' }
  s.source           = { :git => 'https://github.com/b348068721/XDComponent.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.public_header_files = 'XDComponent/Classes/XDComponent.h'
  s.source_files = 'XDComponent/Classes/XDComponent.h'
  s.subspec 'BaseViewController' do |ss|
      ss.source_files = 'XDComponent/Classes/BaseViewController/*.{h,m}'
      ss.public_header_files = 'XDComponent/Classes/BaseViewController/BaseViewController.h'
  end
  s.subspec 'Test' do |ss|
    ss.source_files = 'XDComponent/Classes/Test/*.{h,m}'
    ss.dependency 'XDComponent/BaseViewController'
    ss.public_header_files = 'XDComponent/Classes/Test/*.h'
  end
  s.resource_bundles = {
    'XDComponent' => ['XDComponent/Assets/*']
  }

  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
