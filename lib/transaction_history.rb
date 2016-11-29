require_relative 'transaction'

class Transaction_history

  attr_reader :history, :transaction

  def initialize
    @history = [];
  end

  def create_history(credit, debit, balance)
    @transaction = Transaction.new(credit, debit, balance)
  end

  def save_history(transaction)
    @history << transaction
  end

end
