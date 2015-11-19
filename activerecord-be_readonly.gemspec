# -*- encoding: utf-8 -*-  
$:.push File.expand_path("../lib", __FILE__)  
require "activerecord-be_readonly/version" 

Gem::Specification.new do |s|
  s.name        = 'activerecord-be_readonly'
  s.version     = BeReadonly::VERSION
  s.authors     = ['Gary S. Weaver']
  s.email       = ['garysweaver@gmail.com']
  s.homepage    = 'https://github.com/garysweaver/activerecord-be_readonly'
  s.summary     = %q{Easy read-only models for ActiveRecord 3.x/4.x.}
  s.description = %q{Makes read-only models easier to implement in ActiveRecord 3.x/4.x.}
  s.files = Dir['lib/**/*'] + ['Rakefile', 'README.md']
  s.license = 'MIT'
  s.add_dependency 'activerecord', '>= 3.0', '< 5'
end
