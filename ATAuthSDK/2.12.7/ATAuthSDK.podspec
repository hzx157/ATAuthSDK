#
# Be sure to run `pod lib lint ATAuthSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ATAuthSDK'
  s.version          = '2.12.7'
  s.summary          = '阿里云一键登录SDK'
  s.homepage         = 'https://github.com/wangdean/ATAuthSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wangdean' => '404926036@qq.com' }
  s.source           = { :git => 'https://github.com/wangdean/ATAuthSDK.git', :tag => s.version.to_s }
#  s.source_files = 'ATAuthSDK/**/*'
  s.ios.deployment_target = '10.0'
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'x86_64 armv7 arm64' }
  s.resources        = 'ATAuthSDK/ATAuthSDK.framework/ATAuthSDK.bundle'
  s.vendored_frameworks = 'ATAuthSDK/ATAuthSDK.framework','ATAuthSDK/YTXMonitor.framework','ATAuthSDK/YTXOperators.framework'
end
