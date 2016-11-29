require_relative 'transaction_history'

class Statement
  HEADER = "date".ljust(10) + " || " + "credit".ljust(7) + " || " + "debit".ljust(7) + " || " + "balance"

  attr_reader :history

  def initialize(history)
    @history = history
  end

  def print_history
    statement = ""
    @history.reverse.each do |transaction|
      statement << "#{print_date(transaction.date)}".ljust(10) + " || " +  "#{float(transaction.credit)}".ljust(7) + " || " +  "#{float(transaction.debit)}".ljust(7) + " || " + "#{float(transaction.balance)}" +"\n"
    end
    puts HEADER + "\n" + statement
  end

private

def print_date(date)
  date
end

def float(balance)
    balance == 0 ? "" : format('%.2f', balance)
end

end
