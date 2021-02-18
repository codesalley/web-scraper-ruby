# -*- encoding: utf-8 -*-
# stub: figlet 1.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "figlet".freeze
  s.version = "1.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Tim Fletcher".freeze]
  s.date = "2013-10-11"
  s.description = "Ruby FIGlet library".freeze
  s.email = ["mail@tfletcher.com".freeze]
  s.homepage = "http://github.com/tim/figlet".freeze
  s.rubygems_version = "3.2.9".freeze
  s.summary = "See description".freeze

  s.installed_by_version = "3.2.9" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0.3"])
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.0.3"])
  end
end
