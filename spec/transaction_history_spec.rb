require 'transaction_history'

describe Transaction_history do
  subject(:transaction_history) {described_class.new}

  context 'returns an empty array' do
      it 'should be an ampty transaction history array' do
        expect(transaction_history.history).to eq []
      end
  end

  context 'returns an a transaction' do
      it 'should return a transaction in the history' do
        transaction_history.create_history(300,200,500)
        expect(transaction_history.transaction).to be_an_instance_of(Transaction)
      end
  end

end
