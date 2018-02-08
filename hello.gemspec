Gem::Specification.new do |spec|
  spec.name          = 'hello'
  spec.version       = '0.0.0'
  spec.date          = '2017-02-05'
  spec.summary       = 'Hello'
  spec.description   = 'A simple dummy Gem doing some API stuff'
  spec.authors       = ['Cuong Duong Tuan']
  spec.email         = 'cduongt@cesnet.cz'
  spec.files         = Dir['lib/**/*.rb', 'config/*.yml']
  spec.require_paths = ['lib']
  spec.executables   = ['hello']
  spec.homepage      = 'https://github.com/cduongt/hello'
  spec.license       = 'MIT'
  spec.add_development_dependency 'rspec', '~> 3.5'
  spec.add_development_dependency 'rubocop', '~> 0.48'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.15'
  spec.add_runtime_dependency 'settingslogic', '~> 2.0'
  spec.add_runtime_dependency 'thor', '~> 0.19'
end
