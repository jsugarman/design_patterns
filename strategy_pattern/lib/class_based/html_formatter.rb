
class HTMLFormatter

  def output_report(context)
    puts '<html>' +
    '<head>' +
    "<title>#{context.title}</title>" +
    '<body>' +
    body(context.text) +
    '</body>' +
    '</head>' +
    '</html>'
  end

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

  private

  def body lines
    body = "<ul>"
    lines.each do |line|
      body += output_line line
    end
    body += "</ul>"
  end

  def output_line line
    "<li>#{line}</li>"
  end

end