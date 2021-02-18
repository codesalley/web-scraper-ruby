Gem::Specification.new do |s|
  s.name = 'figlet'
  s.version = '1.1.0'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Tim Fletcher']
  s.email = ['mail@tfletcher.com']
  s.homepage = 'http://github.com/tim/figlet'
  s.description = 'Ruby FIGlet library'
  s.summary = 'See description'
  s.files = Dir.glob('{lib,test}/**/*') + %w(README.md figlet.gemspec)
  s.add_development_dependency('rake', '~> 10.0.3')
  s.require_path = 'lib'
end
