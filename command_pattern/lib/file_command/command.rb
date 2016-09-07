
# template method pattern
class Command

  attr_reader :description

  def initialize(description)
    @description = description
  end

  # override in sub classes
  def execute
  end

  # override in sub classes
  def unexecute
  end

end