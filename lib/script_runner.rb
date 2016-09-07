# extend for each pattern within there folder structure
# by adding a method to excercise the pattern.
# e.g. run_my_pattern_example
#
require_relative '../test/test_helper'

class ScriptRunner

  def initialize
    super
  end

  def self.list
    public_instance_methods(false).each do |method|
      ap " - #{method}"
    end
  end

  def list
    public_methods(false).each do |method|
      ap " - #{method}"
    end
  end

end
