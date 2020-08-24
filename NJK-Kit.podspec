Pod::Spec.new do |s|

s.name        = 'NJK-Kit'

s.version      = '0.0.2'

s.summary      = 'UIKit_Category'

s.homepage    = 'https://github.com/jiangkuoniu/NJK-KitDemo'

s.license      = 'MIT'

s.authors      = {'NJK' => '707429313@qq.com'}

s.platform    = :ios, '9.0'

s.source      = {:git => 'https://github.com/jiangkuoniu/NJK-KitDemo.git', :tag =>"v#{s.version}"}

s.public_header_files = 'NJK-Kit/Classes/NJKKitHeader.h'

s.subspec 'Category' do |category|
category.source_files = 'NJK-Kit/Classes/Category/**/*'
end

s.subspec 'Chain' do |chain|
chain.source_files = 'NJK-Kit/Classes/Chain/**/*'
end

s.requires_arc = true

end