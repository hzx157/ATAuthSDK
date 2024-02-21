Pod::Spec.new do |s|
  s.name             = 'ATAuthSDK'
  s.version          = '2.13.3'
  s.summary          = 'A short description of ATAuthSDK.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aliyun/'
  s.license          = { :type => 'none' }
  s.author           = { 'aliyun' => 'aliyun.com' }
  s.source           = { :git => 'https://github.com/hzx157/ATAuthSDK.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'
  s.source_files = 'ATAuthSDK/*.framework/Headers/**/*.h'
  s.public_header_files = 'ATAuthSDK/*.framework/Headers/**/*.h'
  s.resources = ['ATAuthSDK/ATAuthSDK_D.framework/ATAuthSDK.bundle']
  s.vendored_frameworks = 'ATAuthSDK/*.framework'

end