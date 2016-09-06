module AccountIterable

  def account_details_each
    i = 0
    while i < accounts.length
      yield("name: #{accounts[i].name}\nbalance: #{accounts[i].balance}\n------")
      i += 1
    end
  end

end

# example script
# manager = IterableAccountManager.new('The Man')
# manager.add_account Account.new('Jon',100)
# manager.add_account Account.new('Jim',101)
# manager.account_details_each { |details| puts details }