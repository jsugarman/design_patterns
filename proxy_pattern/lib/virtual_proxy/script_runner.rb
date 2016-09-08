class ScriptRunner

  def run_virtual_proxy_pattern
    puts "number of accounts instantiated (should be zero): #{ObjectSpace.each_object(Account).count}"
    puts 'creating proxy...'
    proxy = AccountVirtualProxy.new { Account.new(Etc.getlogin,100) }
    puts "***number of accounts instantiated (should still be zero): #{ObjectSpace.each_object(Account).count} ***"
    puts "crediting account by 23..."
    proxy.credit(23)
    puts "number of accounts instantiated (should be 1): #{ObjectSpace.each_object(Account).count}"
    puts "debiting account by 24..."
    proxy.debit(24)
    puts "number of accounts instantiated (should be 1): #{ObjectSpace.each_object(Account).count}"
    puts "balance of account after +23 -24 is #{proxy.balance}"
  end

end