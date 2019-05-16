
Pod::Spec.new do |spec|

  spec.name         = "YYAdditions"
  spec.version      = "1.0.23"
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
  spec.source_files = 'YYAdditions/Tools/*.{h,m}'
  spec.dependency "SVProgressHUD", "~> 2.2.2"

end
