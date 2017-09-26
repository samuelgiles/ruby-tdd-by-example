# frozen_string_literal: true

require 'spec_helper'
require 'expression'
require 'money'
require 'pair'
require 'bank'
require 'sum'

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

  describe '#plus' do
    context 'with the same currency returns Money' do
      subject(:sum) { Money.dollar(1).plus(Money.dollar(1)) }

      it { is_expected.to be_an_instance_of(Money) }
    end
  end
end
