class Account

  attr_reader :name, :number, :balance

  def initialize(name, opening_balance=0)
    @name = name
    @number = rand(1000000..1999999)
    @balance = opening_balance || 0
  end

  def credit amount
    @balance += amount
  end

  def debit amount
    @balance -= amount
  end

  # REQUIRED: default sorting by balance
  def <=>(other)
    balance <=> other.balance
  end

end