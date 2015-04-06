# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'nested_scaffold'
  s.version = '0.2.1'

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ['Akira Matsuda', 'Alex Takitani']
  s.date = '2015-06-04'
  s.description = 'Nested scaffold generator for Rails 4'
  s.email = 'ronnie@dio.jp'
  s.extra_rdoc_files = ['LICENSE.txt', 'README.rdoc']

  s.homepage = 'http://github.com/amatsuda/nested_scaffold'
  s.licenses = ['MIT']
  s.require_paths = ['lib']
  s.rubygems_version = '1.3.7'
  s.summary = 'Nested scaffold generator for Rails 4'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['LICENSE.txt', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'rails', '~> 4'

  s.add_development_dependency 'sqlite3'
end

