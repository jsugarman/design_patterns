module Iterator

  def self.verbose_element_each(array)
    index = 0
    while index < array.length
      # yield("\{#{index} => #{array[index]}\}")
      yield("element at index #{index} has a value of #{array[index]}")
      index += 1
    end
  end

end