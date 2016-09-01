class Report

  attr_accessor :title, :text, :formatter

  def initialize(formatter)
    @title = 'Monhtly report'
    @text = ['things are going','really,really well']
    @formatter = formatter
  end

  def output
    @formatter.output_report(self)
  end

end