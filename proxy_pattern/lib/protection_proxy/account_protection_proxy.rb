class AccountProtectionProxy

  def initialize(account)
    @subject = account
  end

  def method_missing(name, *args)
    check_access
    puts "delegating #{name} to subject #{@subject.class}"
    @subject.__send__(name, *args)
  end

  private

  def check_access
    raise "Illegal access: #{@subject.name} is not authorized to access this account" if Etc.getlogin != @subject.name
  end

end