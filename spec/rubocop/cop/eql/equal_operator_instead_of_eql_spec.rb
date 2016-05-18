require 'spec_helper'

describe RuboCop::Cop::Eql::EqualOperatorInsteadOfEql do
  subject(:cop) { described_class.new }

  it 'detects use of == as an offense' do
    inspect_source(cop, '1 == 2')
    expect(cop.messages).to eq(['Avoid using `==`. Use `.eql?` instead.'])
    expect(cop.highlights).to eq(['1 == 2'])
  end
end
