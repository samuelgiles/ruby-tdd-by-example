# frozen_string_literal: true

require 'spec_helper'
require 'money_example/expression'
require 'money_example/money'
require 'money_example/pair'
require 'money_example/bank'
require 'money_example/sum'

describe Bank do
  let(:bank) { described_class.new }

  describe '#reduce' do
    subject(:result) { bank.reduce(money_to_reduce, currency_to_reduce_to) }

    context 'with money in different currencies' do
      let(:money_to_reduce) { Money.franc(2) }
      let(:currency_to_reduce_to) { 'USD' }

      before do
        bank.add_rate('CHF', 'USD', 2)
      end

      it { is_expected.to eq Money.dollar(1) }
    end

    context 'with money in the same currency' do
      let(:money_to_reduce) { Money.dollar(2) }
      let(:currency_to_reduce_to) { 'USD' }

      it { is_expected.to eq Money.dollar(2) }
    end
  end

  describe '#add_rate' do
    subject(:rates) { bank.rates }

    before do
      bank.add_rate('USD', 'CHF', 2)
    end

    it { is_expected.to contain_exactly [Pair.new('USD', 'CHF'), 2] }
  end
end
