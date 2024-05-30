Pod::Spec.new do |spec|
  spec.name         = 'SharpnezCore'
  spec.version      = '2.1.1'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/TiagoLinharess/IOSSDK.git'
  spec.authors      = { 'Tiago Linhares' => 'tiagolinharessouza@gmail.com' }
  spec.summary      = 'This is a software development kit'
  spec.source       = { :git => 'https://github.com/TiagoLinharess/sdk-ios-sharpnez-core.git', :tag => '2.1.1' }
  spec.platforms    = { :ios => "16.4" }
  spec.swift_version = '5.8.1'
  spec.vendored_frameworks = 'SharpnezCore.xcframework'
  spec.framework    = 'SystemConfiguration'
end
