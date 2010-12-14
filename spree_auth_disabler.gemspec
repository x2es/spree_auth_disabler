Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_auth_disabler'
  s.version     = '0.0.1'
  s.summary     = '[Spree-0.30+] extension for disable client signup/auth features'
  s.description = s.summary
  s.required_ruby_version = '>= 1.8.7'

  s.author            = 'x@ES'
  s.email             = 'KEIvanov@gmail.com'
  s.homepage          = 'https://github.com/x2es/spree_auth_disabler'
  # s.rubyforge_project = 'actionmailer'

  s.files        = Dir['README.rdoc', 'lib/**/*', 'config/**/*', 'app/**/*']
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency('spree_core', '>= 0.30.1')
end
