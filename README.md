# ATAuthSDK
[阿里云号码认证SDK](https://help.aliyun.com/product/75010.html?spm=a2c4g.11174283.6.540.79f229d3qHCmVk)

动态库版本 -> [ATAuthSDK_D](https://github.com/CaiChenghan/ATAuthSDK_D)
## 版本说明
[V2.12.0-2020.01.12](https://github.com/CaiChenghan/ATAuthSDK/blob/master/ATAuthSDKNote.txt)

## 使用

#### 1. 指定git引用
```ruby
pod 'ATAuthSDK', :git => 'https://github.com/CaiChenghan/ATAuthSDK.git', :tag => '2.12.0'
```

#### 2. 使用私有库
```ruby
 source 'https://github.com/CaiChenghan/CCRepo.git'
 source 'https://github.com/CocoaPods/Specs.git'
 target 'MyApp' do
    pod 'ATAuthSDK', '~> 2.12.0'
 end
```

#### 3. 自行制作私有pod
- [制作私有pod](https://www.jianshu.com/p/c94d394f0be7)
- 本地引用
```ruby
pod 'ATAuthSDK', :path => './ATAuthSDK'
```
```
注意引用路径，如果不知道，可拖动制作好的私有库到终端，即可查看路径。或者显示简介，拷贝位置即可。
```

## Author

1178752402@qq.com

## License

ATAuthSDK is available under the MIT license. See the LICENSE file for more info.


