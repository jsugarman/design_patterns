class ArrayIterator

  attr_reader :index, :array

  def initialize(array)
    @index = 0
    @array = array
  end

  def has_next?
    @index < @array.length-1
  end

  def next_item
    @index += 1
    @array[@index]
  end

  def item
    @array[@index]
  end

  def item= value
    @array[@index] = value
  end

end