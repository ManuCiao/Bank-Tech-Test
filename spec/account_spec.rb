require 'account'

describe Account do

  subject(:account) {described_class.new}

  context 'returns balance' do
    it 'starts at balance 0' do
      expect(account.balance).to eq 0
    end
  end

  context 'returns credit' do
    it 'add credit to the balance' do
      account.add_credit(500)
      expect(account.balance).to eq 500
    end
  end

  context 'returns withdraw' do
    it 'remove credit to the balance' do
      account.add_credit(500)
      account.withdraw(200)
      expect(account.balance).to eq 300
    end
  end



end
