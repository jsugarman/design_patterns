require_relative "../../test/test_helper"
require "rake/testtask"

# default rake test tast override
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["#{app_root}/test/template_method/**/*.rb"]
  t.verbose = true
end