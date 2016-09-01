require_relative "../../test/test_helper"

# desc 'run all tests'
# task :test, [:files] do |_task, args|
#   ap 'running tests'
#   files = (args[:files] ||= File.expand_path("#{app_root}/test/**/*.rb"))
#   ap files
#   Dir[files].each do |file|
#     ap "running test for #{file}"
#     sh "ruby -Ilib:test #{file}"
#   end
# end

require "rake/testtask"

# default rake test tast override
Rake::TestTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["#{app_root}/test/template_method/**/*.rb"]
  t.verbose = true
end