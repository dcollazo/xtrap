Gem::Specification.new do |s|
  s.name        = 'xtrap'
  s.version     = '0.0.0'
  s.date        = '2013-09-17'
  s.summary     = 'HTML/Gem generator'
  s.description = 'Generator for HTML and RubyGem directory structures'
  s.authors     = ['David Collazo']
  s.email       = ['davidcollazo@gmail.com']
  s.files       = ['lib/xtrap_gem/xtrap.rb']
  s.homepage    = 'http://github.com/dcollazo/xtrap'
  s.license     = 'MIT'

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'aruba'
end