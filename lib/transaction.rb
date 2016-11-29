require 'date'

class Transaction
    attr_reader :credit, :debit, :balance, :date

    def initialize(credit, debit, balance)
        @debit = debit
        @credit = credit
        @balance = balance
        @date = Time.new.strftime("%d/%m/%Y")
    end

end
