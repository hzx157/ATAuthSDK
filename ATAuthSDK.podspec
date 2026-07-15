Pod::Spec.new do |s|
  s.name             = 'ATAuthSDK_D'
  s.version          = '2.14.18'
  s.summary          = 'ATAuthSDK binary framework.'
  s.description      = 'ATAuthSDK binary framework.'

  s.homepage         = 'https://github.com/aliyun/'
  s.license          = { :type => 'none' }
  s.author           = { 'aliyun' => 'aliyun.com' }
  s.source           = { :git => 'https://github.com/wangdean/ATAuthSDK.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.vendored_frameworks = 'ATAuthSDK_D/ATAuthSDK_D.xcframework'

end
