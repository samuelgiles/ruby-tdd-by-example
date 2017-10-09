# frozen_string_literal: true

require 'spec_helper'
require 'money_example/expression'
require 'money_example/money'
require 'money_example/pair'
require 'money_example/bank'
require 'money_example/sum'

describe Money do
  describe '#==' do
    context 'for the same currency' do
      subject(:franc_a) { Money.franc(5) }
      let(:franc_b) { Money.franc(5) }

      context 'when amounts are equal' do
        it { is_expected.to eq franc_b }
      end

      context 'when amounts are not equal' do
        let(:franc_b) { Money.franc(10) }

        it { is_expected.not_to eq franc_b }
      end
    end

    context 'for different currencies' do
      subject(:franc_a) { Money.dollar(5) }
      let(:franc_b) { Money.franc(5) }

      context 'when amounts are equal' do
        it { is_expected.not_to eq franc_b }
      end
    end
  end

  describe '#times' do
    subject(:times) { money.times(5) }

    let(:money) { described_class.new(5, 'USD') }
    let(:twenty_five) { Money.new(25, 'USD') }

    it { is_expected.to eq twenty_five }
  end

  describe '.franc' do
    subject(:franc) { described_class.franc(10) }

    let(:ten_francs) { Money.new(10, 'CHF') }

    it { is_expected.to eq ten_francs }
  end

  describe '.dollar' do
    subject(:dollar) { described_class.dollar(10) }

    let(:ten_dollars) { Money.new(10, 'USD') }

    it { is_expected.to eq ten_dollars }
  end

  describe '#currency' do
    subject(:currency) { described_class.dollar(10).currency }

    let(:ten_dollars) { Money.new(10, 'USD') }

    it { is_expected.to eq 'USD' }
  end

  describe '#plus' do
    subject(:reduced) { bank.reduce(sum, 'USD') }

    let(:five_dollars) { described_class.dollar(5) }
    let(:ten_dollars) { described_class.dollar(10) }
    let(:sum) { five_dollars.plus(five_dollars) }
    let(:bank) { Bank.new }

    it { is_expected.to eq ten_dollars }

    specify do
      expect(sum).to be_an_instance_of(Sum)
      expect(sum.augend).to eq five_dollars
      expect(sum.addend).to eq five_dollars
    end

    context 'with 3 dollars and 4 dollars' do
      let(:three_dollars) { described_class.dollar(3) }
      let(:four_dollars) { described_class.dollar(4) }
      let(:seven_dollars) { described_class.dollar(7) }
      let(:sum) { three_dollars.plus(four_dollars) }

      specify do
        expect(reduced).to eq seven_dollars
      end
    end

    context 'with mixed currencies' do
      subject(:result) { bank.reduce(five_dollars.plus(ten_francs), 'USD') }

      let(:ten_francs) { described_class.franc(10) }

      before do
        bank.add_rate('CHF', 'USD', 2)
      end

      it { is_expected.to eq Money.dollar(10) }
    end
  end
end
