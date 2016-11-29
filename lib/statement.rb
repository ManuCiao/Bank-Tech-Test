require_relative 'transaction_history'

class Statement


  attr_reader :history

  def initialize(history)
    @history = history
  end


end
