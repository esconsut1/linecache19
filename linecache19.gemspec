# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "linecache19/version"

Gem::Specification.new do |s|
  s.name        = 'linecache19'
  s.version     = Linecache::Version::STRING
  s.authors     = ["R. Bernstein", "Mark Moseley", "Kevin Burge"]
  s.email       = 'kcburge@gmail.com'
  s.homepage    = "https://github.com/kcburge/linecache"
  s.summary     = 'Read file with caching'
  s.description = "Linecache is a module for reading and caching
lines. This may be useful for example in a debugger where the same
lines are shown many times."

  s.date        = '2012-02-26'
  s.files       = [
     "AUTHORS",
     "COPYING",
     "ChangeLog",
     "NEWS",
     "README",
     "Rakefile",
     "ext/trace_nums19/extconf.rb",
     "ext/trace_nums19/trace_nums.c",
     "ext/trace_nums19/trace_nums.h",
     "lib/linecache19.rb",
     "lib/tracelines19.rb",
  ]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = [
    "README",
     "lib/linecache19.rb",
     "lib/tracelines19.rb"
  ]

  s.require_paths = ["lib"]

  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")

  s.test_files = [
    "test/lnum-diag.rb",
    "test/rcov-bug.rb",
    "test/short-file",
    "test/test-linecache.rb",
    "test/test-tracelines.rb"
    ]

  s.extensions << "ext/trace_nums19/extconf.rb"

  s.add_dependency("ruby_core_source", ">= 0.1.3")
  s.add_development_dependency("rake-compiler")
end
