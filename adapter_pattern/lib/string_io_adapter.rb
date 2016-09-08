# adapter pattern to enable the
# the passing of a string to the
# encrypter as reader or writer
class StringIOAdapter

  def initialize(string)
    @index = 0
    @string = string
  end

  def getc
    raise EOFError if eof?
    char = @string[@index]
    @index += 1
    char
  end

  def eof?
    @index >= @string.length
  end

  def close
  end

end
