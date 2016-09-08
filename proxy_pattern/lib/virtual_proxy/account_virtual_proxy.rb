# for lazy loading:
# object creation postponed
# until a method is called
class AccountVirtualProxy

  def initialize(&account_creation_block)
    @account_creation_block = account_creation_block
  end

  def method_missing(name, *args)
    subject.__send__(name, *args)
  end

  def subject
    @subject ||= @account_creation_block.call
  end

end