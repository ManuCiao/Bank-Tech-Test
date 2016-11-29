require_relative 'transaction'

class Transaction_history

  attr_reader :history, :transaction

  def initialize
    @history = [];
  end

  def create_history(credit, deposit, new_balance)
    @transaction = Transaction.new(credit, deposit, new_balance)
  end

end
