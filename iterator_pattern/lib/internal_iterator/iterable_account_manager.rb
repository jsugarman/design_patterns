require_relative 'account_iterable'

class IterableAccountManager
  include AccountIterable

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

end