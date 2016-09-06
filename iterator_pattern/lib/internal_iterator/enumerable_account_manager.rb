class EnumerableAccountManager
  include Enumerable

  attr_reader :accounts

  def initialize(name)
    @accounts = []
  end

  def add_account(account)
    accounts << account
  end

  def remove_account(account)
    accounts.delete(account)
  end

  # REQUIRED: pass thru the block to enumerable for the accounts array
  def each(&block)
    accounts.each(&block)
  end
end