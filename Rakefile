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

desc "Run unittests"
Rake::TestTask.new(:unitTest => [:codeGen, :dataLoad]) do |t|
    t.libs << 'test'
    t.verbose = false
    t.test_files = FileList["test/unitTests/*_test.rb"]
end

require 'rspec/core'
desc "Run RSpec tests"
RSpec::Core::RakeTask.new(:specTest => [:codeGen, :dataLoad]) do |t|
	t.pattern = Dir.glob('test/specTests/*_spec.rb')
	t.rspec_opts = '--format documentation'
	t.rspec_opts = '--color'
end

desc "Run all tests and build if successful"
task :test => [:specTest, :unitTest, :build]

desc "Run codeclimate codecoverage"
task :codeclimate => :test do
	require 'simplecov'
	require 'codeclimate-test-reporter'
	CodeClimate::TestReporter::Formatter.new.format(SimpleCov.result)
end

require 'coveralls/rake/task'
Coveralls::RakeTask.new
desc "Run Coveralls codecoverage"
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
end