require 'rake'
require 'rake/testtask'

task :default => :ps3

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
Rake::TestTask.new(:ps3 => [:codeGen, :dataLoad]) do |t|
    t.libs << 'test'
    t.verbose = true
    t.test_files = FileList["test/*_test.rb"]
end