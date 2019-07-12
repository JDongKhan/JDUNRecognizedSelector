

Pod::Spec.new do |s|

    s.name         = "JDUNRecognizedSelector"
    s.version      = '0.0.2' 
    s.summary      = "JDUNRecognizedSelector"

    s.description  = <<-DESC
			JDRouter
                   DESC

    s.homepage     = "https://github.com/JDongKhan/JDUNRecognizedSelector.git"

    s.license      = { :type => 'MIT', :file => 'LICENSE' }

    s.author             = { "wangjindong" => "419591321@qq.com" }
    s.platform     = :ios, "8.0"

    s.source       = { :git => "https://github.com/JDongKhan/JDUNRecognizedSelector.git", :tag => s.version.to_s }


    s.frameworks = 'Foundation'
    s.requires_arc = true


    s.source_files = 'JDUNRecognizedSelector/Sources/**/*.{h,m}'
    s.public_header_files = 'JDUNRecognizedSelector/Sources/**/*.h'

end
