require 'date'

class Transaction
    attr_reader :credit, :deposit, :new_balance, :date

    def initialize(credit, deposit, new_balance)
        @deposit = deposit
        @credit = credit
        @new_balance = new_balance
        @date = Time.new.strftime("%d/%m/%Y")
    end

end
