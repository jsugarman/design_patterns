require_relative '../../test_helper'

puts "html text report test"

class HTMLReportTest < MiniTest::Test
  def setup
    @html_report = HTMLReport.new
  end

  def test_output
    assert_equal @html_report.output, '<html><head><title>Monthly report</title></head><body><p>things are going</p><p>really,really well</p></body></html>', "html output valid"
  end
end