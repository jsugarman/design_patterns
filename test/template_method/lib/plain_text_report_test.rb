require_relative '../../test_helper'

puts "plain text report test"

class PlainTextReportTest < MiniTest::Test
  def setup
    @plain_text_report = PlainTextReport.new
  end

  def test_output
    assert_equal @plain_text_report.output, '<html><head><title>Monthly report</title></head><body><p>things are going</p><p>really,really well</p></body></html>', "plain output valid"
  end
end