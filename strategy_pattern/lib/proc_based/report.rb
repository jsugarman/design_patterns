class Report

  attr_reader :title, :text
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'Monhtly report'
    @text = ['things are going','really,really well']
    @formatter = formatter
  end

  def output
    @formatter.call(self)
  end

end