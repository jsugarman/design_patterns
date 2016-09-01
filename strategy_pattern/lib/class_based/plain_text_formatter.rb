class PlainTextFormatter

  def output_report(context)
    puts  "title: #{context.title}\n" +
          body(context.text) +
          "\n-------------"
  end

  private

  def body lines
    @index = 0
    body = ""
    lines.each do |line|
      body += output_line line
    end
    body
  end

  def output_line line
    @index += 1
    "#{@index}. #{line} \n"
  end

end