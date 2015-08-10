# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "contentful_middleman/version"

Gem::Specification.new do |s|
  s.name        = "contentful_middleman"
  s.version     = ContentfulMiddleman::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Sascha Konietzke", "Farruco Sanjurjoj"]
  s.email       = ["sascha@contentful.com", "madtrick@gmail.com"]
  s.homepage    = "https://www.contentful.com"
  s.summary     = %q{Include mangablable content from the Contentful CMS and API into your Middleman projects}
  s.description = %q{Load blog posts and other managed content into Middleman}
  s.license = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # The version of middleman-core your extension depends on
  s.add_dependency("middleman-core", ["4.0.0.beta.2"])

  s.add_dependency("middleman-blog", ["3.6.0.beta.2"])

  # Additional dependencies
  s.add_dependency("contentful")

  s.add_development_dependency 'rubygems-tasks', '~> 0.2'
end
