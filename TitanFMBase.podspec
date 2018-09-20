#
# Be sure to run `pod lib lint TitanFMBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TitanFMBase'
  s.version          = '0.1.0'
  s.summary          = 'TitanFMBase.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        TitanFMBase是一个基础组件
                       DESC

  s.homepage         = 'https://github.com/CoderTitan/TKBaseTool'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'CoderTitan' => 'quanjunt@163.com' }
  s.source           = { :git => 'https://github.com/CoderTitan/TKBaseTool.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  # s.source_files = 'TitanFMBase/Classes/**/*'

  s.subspec 'Base' do |sb|
    sb.source_files = 'TitanFMBase/Classes/Base/**/*'
  end

  s.subspec 'Category' do |sb|
      sb.source_files = 'TitanFMBase/Classes/Category/**/*'
  end

  s.subspec 'Network' do |sb|
      sb.source_files = 'TitanFMBase/Classes/Network/**/*'
      sb.dependency 'AFNetworking'
      sb.dependency 'SDWebImage'
      sb.dependency 'TitanFMBase/Category'
  end

  s.subspec 'Tools' do |sb|
      sb.source_files = 'TitanFMBase/Classes/Tools/**/*'
  end
  
  # s.resource_bundles = {
  #   'TitanFMBase' => ['TitanFMBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
