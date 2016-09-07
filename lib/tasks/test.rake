require_relative "../../test/test_helper"
require "rake/testtask"

# default rake test tast override
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["#{File.expand_path("#{__FILE__}/../..")}/test/**/*.rb"]
  t.verbose = true
end