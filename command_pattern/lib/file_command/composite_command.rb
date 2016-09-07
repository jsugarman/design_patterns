class CompositeCommand < Command

  attr_reader :commands

  def initialize
    @commands = []
  end

  def add_command(command)
    @commands << command
  end

  def remove_command(command)
    @commands.delete(command)
  end

  def execute
    @commands.each { |c| c.execute }
  end

  def unexecute(steps = nil)
    steps ||= @commands.length
    @commands.reverse.each_with_index { |c,idx| c.unexecute if (idx < steps) }
    @commands.pop(steps)
  end

  def description
    description = ''
    commands.each { |c| description += c.description + "\n" }
    description
  end

  def reverse_description
    description = ''
    commands.reverse_each { |c| description += c.description + "\n" }
    description
  end

end
