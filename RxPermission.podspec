Pod::Spec.new do |s|
  s.name             = "RxPermission"
  s.version          = "1.0.0"
  s.summary          = "ReactiveX way to request permissions on iOS."
  s.description      = <<-EOS
  RxSwift binding for [Permission](https://github.com/delba/Permission) API that helps you with Permissions in iOS.
  EOS
  s.homepage         = "https://github.com/roshanman/RxPermission"
  s.license          = 'MIT'
  s.author           = { "roshanman" => "morenotepad@163.com" }
  s.source           = { :git => "https://github.com/roshanman/RxPermission.git", :tag => s.version.to_s }
  s.platform     = :ios, '9.0'
  s.ios.deployment_target = '9.0'
  s.source_files = 'Source/*.swift'
  s.dependency 'Permission'
  s.dependency 'RxSwift'
  s.dependency 'RxCocoa'
end
