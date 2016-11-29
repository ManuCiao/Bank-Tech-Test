require 'transaction'

describe Transaction do
  subject(:transaction) {described_class.new(300, 0, 300)}

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

  context 'return debit' do
    it 'should return the debit' do
      expect(transaction.debit).to eq 0
    end
  end

  context 'return new balance' do
    it 'should return the new balance' do
      expect(transaction.balance).to eq 300
    end
  end

end
