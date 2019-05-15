
Pod::Spec.new do |spec|

  spec.name         = "YYAdditions"
  spec.version      = "1.0.13"
  spec.summary      = "A short description of YYAdditions."

  spec.description  = <<-DESC
	A short description of YYAdditions. YYAddition is Yiyang's public repository.
                   DESC

  spec.homepage     = "https://github.com/Yiyanglao/YYAdditions"
  spec.license      = { :type => 'MIT', :file => 'LICENSE' }

  spec.author       = { "Yiyang" => "yiyang.developer@longwill.com.cn" }
  spec.source       = { :git => "https://github.com/Yiyanglao/YYAdditions.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target = '9.0'

  ## 头文件
  spec.public_header_files = 'YYAdditions/Tools/*.h'
  spec.source_files = 'YYAdditions/Tools/*.h'

  ## 模块文件
  spec.subspec "YYHelper" do |yh|
	yh.source_files = 'YYAdditions/Tools/PublicClass/*.{h,m}'
  end

  spec.subspec "PublicViews" do |pv|
	pv.source_files = 'YYAdditions/Tools/PublicViews/*.{h,m}'
  end

  spec.subspec "Categorys" do |cs|
	cs.source_files = 'YYAdditions/Tools/Categorys/*.{h,m}'
  end

end
