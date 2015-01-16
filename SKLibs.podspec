#
# Be sure to run `pod lib lint SKLibs.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "SKLibs"
  s.version          = "0.2"
  s.summary          = "Frequently used utilits and libraries for my projects"
  s.description      = <<-DESC
                        Frequently used utilits and libraries for my projects.
                       DESC
  s.homepage         = "https://github.com/stephenkopylov/SKLibs"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Stephen Kopylov" => "newonxp@gmail.com" }
  s.source           = { :git => "https://github.com/stephenkopylov/SKLibs.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'SKLibs/Classes'

  s.resource_bundles = {
    'SKLibs' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.dependency 'RMMapper'
  s.dependency  'ShareKit/Facebook'
  s.dependency  'ShareKit/Vkontakte'
  s.dependency  'ShareKit/Twitter'
  s.dependency  'Masonry'
end
