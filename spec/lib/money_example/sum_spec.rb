# frozen_string_literal: true

require 'spec_helper'
require 'money_example/expression'
require 'money_example/money'
require 'money_example/pair'
require 'money_example/bank'
require 'money_example/sum'

describe Sum do
  describe '#times' do
    subject(:result) { bank.reduce(sum, 'USD') }

    let(:bank) { Bank.new }
    let(:rate) { bank.add_rate('CHF', 'USD', 2) }
    let(:five_dollars) { Money.dollar(5) }
    let(:ten_francs) { Money.franc(10) }
    let(:sum) { described_class.new(five_dollars, ten_francs).times(2) }
    let(:setup_records) do
      rate
    end

    before { setup_records }

    it { is_expected.to eq Money.dollar(20) }
  end
end
