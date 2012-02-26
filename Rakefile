require "bundler/gem_helper"
require 'rake/testtask'
require 'rake/extensiontask'

gem_helper = Bundler::GemHelper.new(Dir.pwd)
gem_helper.install
Rake::ExtensionTask.new('trace_nums19', gem_helper.gemspec)

desc "Test everything."
task :test => :compile do
  Rake::TestTask.new(:test) do |t|
    t.pattern = 'test/test-*.rb'
    t.verbose = true
  end
end

desc "Remove built files"
task :clean do
  rm "lib/trace_nums19.so" if File.exists?("lib/trace_nums19.so")
  rm_rf "tmp" if File.exists?("tmp")
end

=begin
desc "Generate rdoc documentation"
task :rdoc do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title    = "linecache"
  # Show source inline with line numbers
  rdoc.options << "--inline-source" << "--line-numbers"
  # Make the readme file the start page for the generated html
  rdoc.options << '--main' << 'README'
  rdoc.rdoc_files.include('ext/**/*.c',
                          'lib/*.rb',
                          'README',
                          'COPYING')
end
=end

task :default => [:test]
