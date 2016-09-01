module Formatter

  HTML_FORMAT = lambda do |context|
    body = "<ul>"
    context.text.each do |line|
      body += "<li>#{line}</li>"
    end
    body += "</ul>"

    '<html>' +
    '<head>' +
    "<title>#{context.title}</title>" +
    '<body>' +
    body +
    '</body>' +
    '</head>' +
    '</html>'
  end

  PLAIN_TEXT_FORMAT = lambda do |context|
    index = 0
    body = ""
    context.text.each do |line|
      index += 1
      body += "#{index}. #{line} \n"
    end

    "title: #{context.title}\n" +
    body +
    "\n-------------"

  end

end