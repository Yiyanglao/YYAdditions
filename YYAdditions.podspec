
Pod::Spec.new do |spec|

  spec.name         = "YYAdditions"
  spec.version      = "1.0.19"
  spec.summary      = "A short description of YYAdditions."

  spec.description  = <<-DESC
	A short description of YYAdditions. YYAddition is Yiyang's public repository.
                   DESC

  spec.homepage     = "https://github.com/Yiyanglao/YYAdditions"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  spec.author       = { "Yiyang" => "yiyang.developer@longwill.com.cn" }
  spec.source       = { :git => "https://github.com/Yiyanglao/YYAdditions.git", :tag => "#{spec.version}" }

  spec.platform     = :ios, "8.0"
  spec.ios.deployment_target = '8.0'

  ## 头文件
  spec.public_header_files = 'YYAdditions/Tools/*.h'
  spec.source_files = 'YYAdditions/Tools/**/*.{h,m}'

  ## 模块文件
  ## 注意：模块内部文件不要引用模块外部的.h文件，否则会报fatal error: file not found，验证不通过
  #spec.subspec "YYClass" do |yc|
	#yc.source_files = 'YYAdditions/Tools/**/*.{h,m}'
  #end

  #spec.subspec "NewModule" do |nm|
	#nm.source_files = 'YYAdditions/NewModule/**/*.{h,m}'
  #end

  spec.dependency "SVProgressHUD", "~> 2.2.2"

end
