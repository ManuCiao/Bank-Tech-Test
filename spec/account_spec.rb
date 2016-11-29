require 'account'

describe Account do

  subject(:account) {described_class.new}

  context 'returns balance' do
    it 'starts at balance 0' do
      expect(account.balance).to eq 0
    end
  end




end
