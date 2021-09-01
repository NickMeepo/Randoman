#
# Be sure to run `pod lib lint Highlightr.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Randoman"
  s.version          = "0.1.0"
  s.summary          = "My toolkit to get random data."

  s.description      = <<-DESC
                       My toolkit to get random data.
                       DESC

  s.homepage         = "https://github.com/NickMeepo/Randoman"
  #s.screenshots     = "http://raw.githubusercontent.com/raspu/Highlightr/master/mix2.gif", "http://raw.githubusercontent.com/raspu/Highlightr/master/coding.gif"
  s.license          = 'MIT'
  s.author           = { "Nick Meepo" => "383062105@qq.com" }
  s.source           = { :git => "https://github.com/NickMeepo/Randoman.git", :tag => s.version.to_s, :submodules => true}

  s.ios.deployment_target = '10.0'
  #s.osx.deployment_target = '11.0'
  #s.tvos.deployment_target = '10.0'

  s.swift_version = '5.0'

  s.requires_arc = true

  s.source_files = 'Randoman/**/*.{swift}'

  s.resources  = 'Randoman/script/*.{js}'

  #s.ios.frameworks = 'UIKit'
  #s.osx.frameworks = 'AppKit'

end





