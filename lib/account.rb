class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add_credit(balance)
    @balance += balance
  end

  def withdraw(balance)
    @balance -= balance  
  end



end
