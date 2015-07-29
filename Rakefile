require 'rake'
require 'rake/testtask'
require 'rspec/core/rake_task'
require 'bundler/gem_tasks'

task :default => :test

desc 'Remove coverage and pkg dirs before compilation'
task :clean do
  rm_rf %w(coverage pkg)
end

desc 'Run Unittests'
Rake::TestTask.new(:unitTest) do |t|
  t.libs << 'test'
  t.verbose = false
  t.test_files = FileList['test/unitTests/*_test.rb']
end

require 'rspec/core'
desc 'Run RSpec tests'
RSpec::Core::RakeTask.new(:specTest) do |t|
  t.pattern = Dir.glob('test/specTests/*_spec.rb')
  t.rspec_opts = '--format documentation'
  t.rspec_opts = '--color'
end

desc 'Clean workspace. Run RuboCop. Run spec and unittests, and build.'
task :test => [:clean, :rubocop, :specTest, :unitTest, :build]

desc 'Run codeclimate - Sends coverage info to CodeClimate when in CI'
task :codeclimate => :test do
  require 'simplecov'
  require 'codeclimate-test-reporter'
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
      SimpleCov::Formatter::HTMLFormatter,
      CodeClimate::TestReporter::Formatter
  ]
  CodeClimate::TestReporter::Formatter.new.format(SimpleCov.result)
end

require 'coveralls/rake/task'
desc 'Run Coveralls - Sends coverage info to coveralls.io when in CI'
task :coveralls => [:test, 'coveralls:push'] do
  require 'simplecov'
  require 'coveralls'
  SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
        SimpleCov::Formatter::HTMLFormatter,
        Coveralls::SimpleCov::Formatter
  ]
  Coveralls.wear_merged!
end

desc 'Run RuboCop - Tool for detecting codestyle violations'
task :rubocop do
  require 'rubocop/rake_task'
  RuboCop::RakeTask.new
end
