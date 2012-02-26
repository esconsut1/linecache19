$:.push File.expand_path("../lib", __FILE__)
require "linecache19/version"

Gem::Specification.new do |s|
  s.name = %q{linecache19}
  s.version = LineCache::Version::STRING
  s.authors = ["R. Bernstein", "Mark Moseley", "Kevin Burge"]
  s.email = %q{kcburge@gmail.com}
  s.homepage    = "https://github.com/kcburge/linecache"
  s.summary = %q{Read file with caching}
  s.description = %q{Linecache is a module for reading and caching lines. This may be useful for
example in a debugger where the same lines are shown many times.
}
  s.date = %q{2012-02-26}
  s.files = [
     "AUTHORS",
     "COPYING",
     "ChangeLog",
     "NEWS",
     "README",
     "Rakefile",
     "ext/trace_nums/extconf.rb",
     "ext/trace_nums/trace_nums.c",
     "ext/trace_nums/trace_nums.h",
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
    "test/parse-show.rb",
    "test/rcov-bug.rb",
    "test/short-file",
    "test/test-linecache.rb",
    "test/test-tracelines.rb"
    ]
  s.extensions << "ext/trace_nums/extconf.rb"
end
