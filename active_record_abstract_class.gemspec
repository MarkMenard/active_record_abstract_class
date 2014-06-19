$:.push File.expand_path("../lib", __FILE__)
require 'active_record_abstract_class/version'

Gem::Specification.new do |s|
  s.name        = 'active_record_abstract_class'
  s.version     = ActiveRecordAbstractClass::VERSION
  s.date        = '2014-06-19'
  s.summary     = 'ActiveRecord abstract class'
  s.description = 'Make ActiveRecord classes non-persistable with a module'
  s.authors     = ['Jonathan Chapman']
  s.email       = 'sa@enablelabs.com'
  s.files       = Dir['LICENSE', 'README.md', '{lib}/**/*']
  s.license     = 'MIT'
end