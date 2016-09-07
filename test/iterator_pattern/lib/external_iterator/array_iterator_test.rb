class ArrayIteratorTest < MiniTest::Test
  def setup
    @arr = [1,2,3,4,5]
    @subject = ArrayIterator.new(@arr)
  end

  def test_item
    assert_respond_to @subject, :item
  end

  def test_item=
    assert_respond_to @subject, :item=
  end

  def test_has_next?
    assert_equal true, @subject.has_next?
    while @subject.has_next?
      @subject.next_item
    end
    assert_equal false, @subject.has_next?
  end

  def test_next_item
    assert_equal @subject.next_item, 2
  end
end