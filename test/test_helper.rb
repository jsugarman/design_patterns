require "minitest/autorun"
require 'awesome_print'
require 'byebug'

def app_root
  File.expand_path("#{__FILE__}/../..")
end

# load
Dir[File.expand_path("#{app_root}/**/*.rb")].each do |path|
  require path
end
