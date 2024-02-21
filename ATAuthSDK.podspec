Pod::Spec.new do |s|
  s.name             = 'ATAuthSDK_D'
  s.version          = '2.13.3'
  s.summary          = 'A short description of ATAuthSDK.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/aliyun/'
  s.license          = { :type => 'none' }
  s.author           = { 'aliyun' => 'aliyun.com' }
  s.source           = { :git => 'https://github.com/wangdean/ATAuthSDK.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'
  s.source_files = 'ATAuthSDK_D/*.framework/Headers/**/*.h'
  s.public_header_files = 'ATAuthSDK_D/*.framework/Headers/**/*.h'
  s.resources = ['ATAuthSDK_D/ATAuthSDK_D.framework/ATAuthSDK.bundle']
  s.vendored_frameworks = 'ATAuthSDK_D/*.framework'

end
