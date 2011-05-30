require 'rake'
require 'rake/clean'
require 'rake/testtask'
require 'rbconfig'
include Config

desc 'Install the windows-api library (non-gem)'
task :install do
   sitelibdir = CONFIG["sitelibdir"]
   installdir = File.join(sitelibdir, 'windows')
   Dir.mkdir(installdir) unless File.exists?(installdir)
   file = "lib/windows/api.rb"
   FileUtils.cp(file, installdir, :verbose => true)
end

desc 'Build the windows-api gem'
task :gem do
   spec = eval(IO.read('windows-api.gemspec'))
   Gem::Builder.new(spec).buildend

task :install_gem => [:gem] do
   file = Dir["*.gem"].first
   sh "gem install #{file}"
end

Rake::TestTask.new do |test|
   test.warning = true
   test.verbose = true
end
