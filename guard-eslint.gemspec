# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'guard/eslint/version'

Gem::Specification.new do |s|
  s.name          = 'guard-eslint'
  s.version       = Guard::EslintVersion.to_s
  s.authors       = %w[tadiou RobinDaugherty Andrew Newell]
  s.email         = %w[therearedemonsinsideofus@gmail.com robin@robindaugherty.net andrew.newell@genesys.com]

  s.description   = 'Allows you to add eslint to your Guard toolchain, so that eslint is run.'
  s.summary       = 'Guard to run eslint.'
  s.homepage      = 'https://github.com/andrew-newell/guard-eslint'
  s.license       = 'MIT'

  if s.respond_to?(:metadata)
    s.metadata['changelog_uri'] = 'https://github.com/andrew-newell/guard-eslint/releases'
    s.metadata['source_code_uri'] = 'https://github.com/andrew-newell/guard-eslint'
    s.metadata['bug_tracker_uri'] = 'https://github.com/andrew-newell/guard-eslint/issues'
  else
    puts "Your RubyGems does not support metadata. Update if you'd like to make a release."
  end

  s.files = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.4.0'

  s.add_dependency 'guard', '~> 2.16'
  s.add_dependency 'guard-compat', '~> 1.1'

  s.add_development_dependency 'bundler', '~> 1.16', '>= 1.16'
  s.add_development_dependency 'coveralls', '~> 0.8.22', '>= 0.8.22'
  s.add_development_dependency 'guard-minitest', '~> 2.4.6', '>= 2.4.6'
  s.add_development_dependency 'guard-rubocop', '~> 1.3.0', '>= 1.3.0'
  s.add_development_dependency 'guard-shell', '~> 0.7.1', '>= 0.7.1'
  s.add_development_dependency 'minitest', '~> 5.0', '>= 5.0'
  s.add_development_dependency 'minitest-ci', '~> 3.4.0', '>= 3.4.0'
  s.add_development_dependency 'minitest-reporters', '~> 1.3.4', '>= 1.3.4'
  s.add_development_dependency 'rake', '~> 10.0', '>= 10.0'
  s.add_development_dependency 'rubocop', '0.77.0'
  s.add_development_dependency 'simplecov', '~> 0.16.1', '>= 0.16.1'
end
