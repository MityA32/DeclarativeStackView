

Pod::Spec.new do |spec|

  spec.name         = 'DeclarativeStackView'
  spec.version      = '0.0.2'
  spec.author       = 'Dmytro Hetman'
  spec.license      = { :type => 'MIT', :file => 'MIT.txt' }
  spec.homepage     = 'https://github.com/MityA32/DeclarativeStackView'
  spec.source       = { :git => 'https://github.com/MityA32/DeclarativeStackView.git', :tag => "#{spec.version}" } 
  spec.summary      = 'This is my new framework DeclarativeStackView. Enjoy!'

  spec.swift_version = '5.7'
  spec.platform = :ios, '13'

  spec.source_files = 'Sources/DeclarativeStackView/*'
  

end
