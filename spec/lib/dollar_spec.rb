# frozen_string_literal: true

require 'spec_helper'
require 'dollar'

describe Dollar do
  describe '#times' do
    let(:five) { Money.dollar(5) }
    let(:ten_dollars) { Money.dollar(10) }
    let(:fifteen_dollars) { Money.dollar(15) }

    specify do
      expect(five.times(2)).to eq ten_dollars
      expect(five.times(3)).to eq fifteen_dollars
    end
  end

  describe '#==' do
    subject(:dollar_a) { Money.dollar(5) }
    let(:dollar_b) { Money.dollar(5) }

    context 'when dollars are equal' do
      it { is_expected.to eq dollar_b }
    end

    context 'when dollars are not equal' do
      let(:dollar_b) { Money.dollar(10) }

      it { is_expected.not_to eq dollar_b }
    end
  end

  describe '#currency' do
    subject(:dollar_a) { Money.dollar(5).currency }

    it { is_expected.to eq 'USD' }
  end
end
