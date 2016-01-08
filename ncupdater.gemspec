# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'ncupdater'
  s.version       = `cat ./.semver`
  s.authors       = ['Jonas Schwartz', 'Sigurd Kristensen']
  s.email         = %w(tech@nodes.dk)
  s.homepage      = 'https://github.com/nodes-cloud/ncupdater'
  s.summary       = %q{Easy way to update any ruby script}
  s.description   = %q{A small handy upgrade tool for ruby scripts. just provide a version file, and a url for latest version, and the script will handle the rest}
  s.files         = Dir['README.md', 'lib/**/*']
  s.require_paths = %w(lib)

  s.add_runtime_dependency 'colorize'
  s.add_runtime_dependency 'shell-spinner'
  s.add_runtime_dependency 'semantic'
end