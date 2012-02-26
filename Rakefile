#!/usr/bin/env rake
# -*- Ruby -*-
require 'rubygems'
require 'rake/rdoctask'
require 'rake/testtask'
require 'rake/extensiontask'
require 'linecache19'

Rake::ExtensionTask.new('trace_nums')

desc "Test everything."
test_task = task :test => :lib do
  Rake::TestTask.new(:test) do |t|
    t.pattern = 'test/test-*.rb'
    t.verbose = true
  end
end

desc "Create the core ruby-debug shared library extension"
task :lib do
  Dir.chdir("ext") do
    system("#{Gem.ruby} extconf.rb && make")
  end
end


desc "Test everything - same as test."
task :check => :test

task :default => [:test]

desc "Remove built files"
task :clean => [:clobber_package, :clobber_rdoc] do
  cd "ext" do
    if File.exists?("Makefile")
      sh "make clean"
      rm  "Makefile"
    end
    derived_files = Dir.glob(".o") + Dir.glob("*.so")
    rm derived_files unless derived_files.empty?
  end
end

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
