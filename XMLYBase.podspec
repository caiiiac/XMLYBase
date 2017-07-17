#
# Be sure to run `pod lib lint XMLYBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'XMLYBase'
  s.version          = '0.1.1'
  s.summary          = 'XMLYBase'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
XMLYBase.包含了基本的配置, 分类, 工具类等等
                       DESC

  s.homepage         = 'https://github.com/caiiiac/XMLYBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'caiiiac' => 'caiiiac@163.com' }
  s.source           = { :git => 'https://github.com/caiiiac/XMLYBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'XMLYBase/Classes/**/*'

    s.subspec 'Base' do |b|
    b.source_files = 'XMLYBase/Classes/Base/**/*'
    end

    s.subspec 'Category' do |c|
    c.source_files = 'XMLYBase/Classes/Category/**/*'
    end

    s.subspec 'Network' do |n|
    n.source_files = 'XMLYBase/Classes/Network/**/*'
    n.dependency 'AFNetworking'
    end

    s.subspec 'Tool' do |t|
    t.source_files = 'XMLYBase/Classes/Tool/**/*'
    end

  # s.resource_bundles = {
  #   'XMLYBase' => ['XMLYBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
