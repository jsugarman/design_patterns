class Report
  def initialize
    @title = 'Monthly report'
    @text = ['things are going','really,really well']
  end


  def output
    output_start +
    output_head +
    output_body_start +
    output_body +
    output_body_end +
    output_end
  end

  def output_start
    ''
  end

  def output_head
    raise_abstract_error __method__
  end

  def output_body_start
    ''
  end

  def output_body
    body = ""
    @text.each do |line|
      body += output_line(line)
    end
    body
  end

  def output_line line
    raise_abstract_error __method__
  end

  def output_body_end
    ''
  end

  def output_end
    ''
  end

  private

  def raise_abstract_error method_name
    raise "Called Abstract Method: #{method_name}"
  end

end