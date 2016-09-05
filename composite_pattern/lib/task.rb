#
# super class of composite task class and leaf tasks
#
class Task

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def time_required
    0.0
  end

end