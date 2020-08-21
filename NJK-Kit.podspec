Pod::Spec.new do |s|

s.name        = 'NJK-Kit'

s.version      = '0.0.1'

s.summary      = 'UIKit_Category'

s.homepage    = 'https://github.com/jiangkuoniu/NJK-KitDemo'

s.license      = 'MIT'

s.authors      = {'NJK' => '707429313@qq.com'}

s.platform    = :ios, '9.0'

s.source      = {:git => 'https://github.com/jiangkuoniu/NJK-KitDemo.git', :tag =>"v#{s.version}"}

s.source_files = 'NJK-Kit/**/*'

s.requires_arc = true

end