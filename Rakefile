require 'rake'
require 'rake/testtask'
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
Rake::TestTask.new(:test => [:codeGen, :dataLoad]) do |t|
    t.libs << 'test'
    t.verbose = false
    t.test_files = FileList["test/*_test.rb"]
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

	SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  		SimpleCov::Formatter::HTMLFormatter,
  		Coveralls::SimpleCov::Formatter
	]
	SimpleCov.start
	#require "coveralls"
	#Coveralls.wear!
	
end

#task :install => [:codeGen, :dataLoad, :test] do
#	sh 'bundle install'
#end