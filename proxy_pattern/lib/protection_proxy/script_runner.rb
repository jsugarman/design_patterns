class ScriptRunner

  def run_protection_proxy_pattern
    account = Account.new(Etc.getlogin,100)
    proxy = AccountProtectionProxy.new(account)
    proxy.credit(23)
    proxy.debit(24)
    puts "balance after +23 -24 is #{proxy.balance}"
  end

end