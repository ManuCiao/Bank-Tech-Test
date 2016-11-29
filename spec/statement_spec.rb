require 'statement'

describe Statement do

  let(:history) {double :history}
  subject(:statement) {described_class.new(history)}

  context 'return a statement' do
    it 'should return a statement in the history of transaction' do
      expect(statement.history).to eq history
    end
  end


end
