Pod::Spec.new do |s|
	
	s.name = "ZSCategories"
	s.version = "0.0.1"
	s.summary = "A short description of Hodor"
	s.description = <<-DESC
						A longer description of Hodor in Markdown format.
						* Think: Why did you write this? What is the focus? What does it do?
                   		* CocoaPods will be using this to generate tags, and improve search results.
                   		* Try to keep it short, snappy and to the point.
                   		* Finally, don't worry about the indent, CocoaPods strips it!
                   	DESC
	s.homepage = "https://github.com/caterpillarFly/ZSCategories.git"
	s.license = { :type => "MIT", :file => "LICENSE" }
	s.author = { "caterpillarFly" => "zhaoshengxhu@163.com" }
	s.platform = :ios, "7.0"
	s.source = { :git => "https://github.com/caterpillarFly/ZSCategories.git", :tag => "#{s.version}" }
	s.requires_arc = true

	s.default_subspec = 'All'

	s.subspec 'NS-Category' do |ss|
		ss.ios.source_files = "Classes/NS-Category/*.{h,m,mm,cpp,c}"
	end

	s.subspec 'All' do |ss|
		ss.dependency 'ZSCategories/NS-Category'
	end

end