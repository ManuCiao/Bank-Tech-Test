require_relative 'transaction_history'
require_relative 'statement'

class Account

  attr_reader :balance, :history

  def initialize
    @balance = 0
    @history = Transaction_history.new
  end

  def add_credit(credit)
    @balance += credit
    new_transaction(credit, 0)
    save_statement
  end

  def withdraw(debit)
    @balance -= debit
    new_transaction(0, debit)
    save_statement
  end

  def print_statement
    create_statement
    @statement.print
  end

  private

  attr_reader :transaction, :statement

  def new_transaction(credit, debit)
    balance = @balance
    @transaction = history.create_history(credit, debit, balance)
  end

  def save_statement
    history.save_history(@transaction)
  end

  def create_statement
    @statement = Statement.new(history.history)
  end

end
