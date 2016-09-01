require_relative 'report'

class PlainTextReport < Report

  def initialize
    super
    @index = 0
  end

  def output_head
    "title: #{@title}\n"
  end

  def output_line line
    @index += 1
    "#{@index}. #{line} \n"
  end

  def output_end
    "\n-------------"
  end

end