require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'
require "bundler/gem_tasks"

task :default => :test

task :codeGen do
	puts "CODEGEN"
end

task :compile => :codeGen do
	puts "COMPILE"
end

task :dataLoad => :codeGen do
	puts "DATALOAD"
end

desc "TESTING"
Rake::TestTask.new(:unitTest => [:codeGen, :dataLoad]) do |t|
    t.libs << 'test'
    t.verbose = false
    t.test_files = FileList["test/unitTests/*_test.rb"]
end

RSpec::Core::RakeTask.new(:specTest) do |t|
	t.pattern = Dir.glob('test/specTests/*_spec.rb')
	t.rspec_opts = '--format documentation'
	t.rspec_opts = '--color'
	#t.rcov = true
end

task :test => [:specTest, :unitTest] do
end

task :codeclimate => :test do
	require 'simplecov'
	require 'codeclimate-test-reporter'
	CodeClimate::TestReporter::Formatter.new.format(SimpleCov.result)
end

require 'coveralls/rake/task'
Coveralls::RakeTask.new
task :coveralls => [:test, 'coveralls:push'] do
	require 'simplecov'
	require 'coveralls'
	SimpleCov.command_name 'Unit Tests'
	SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  		SimpleCov::Formatter::HTMLFormatter,
  		Coveralls::SimpleCov::Formatter
	]
	SimpleCov.start
	Coveralls.wear_merged!
	#require "coveralls"
	#Coveralls.wear!
	
end

#task :install => [:codeGen, :dataLoad, :test] do
#	sh 'bundle install'
#end