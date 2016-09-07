class PlainTextReportTest < MiniTest::Test
  def setup
    @plain_text_report = PlainTextReport.new
  end

  def test_output
    assert_equal @plain_text_report.output, "title: Monthly report\n1. things are going \n2. really,really well \n\n-------------", "plain output valid"
  end
end