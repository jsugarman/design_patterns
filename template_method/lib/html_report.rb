require './report'

class HTMLReport < Report

  def output_start
    '<html>'
  end

  def output_head
    '<head>' +
    "<title>#{@title}</title>" +
    '</head>'
  end

  def output_body_start
    '<body>'
  end

  def output_line line
    "<p>#{line}</p>"
  end

  def output_body_end
    '</body>'
  end

  def output_end
    '</html>'
  end

end