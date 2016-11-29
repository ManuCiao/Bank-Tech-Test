class Account

  attr_reader :balance

  def initialize
    @balance = 0
  end

  def add_credit(credit)
    @balance += credit
  end

  def withdraw(credit)
    @balance -= credit
  end



end
