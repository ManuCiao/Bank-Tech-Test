require 'transaction_history'

describe Transaction_history do
  subject(:transaction_history) {described_class.new}

  context 'returns an empty array' do
      it 'should be an ampty transaction history array' do
        expect(transaction_history.history).to eq []
      end
  end

end
