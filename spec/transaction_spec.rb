require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new(300, 200, 500)}

  context 'return date' do
    it 'should return the date' do
      expect(transaction.date).to eq ("29/11/2016")
    end
  end

  context 'return credit' do
    it 'should return the credit' do
      expect(transaction.credit).to eq 300
    end
  end

  context 'return deposit' do
    it 'should return the deposit' do
      expect(transaction.deposit).to eq 200
    end
  end

  context 'return new balance' do
    it 'should return the new balance' do
      expect(transaction.new_balance).to eq 500
    end
  end

end
