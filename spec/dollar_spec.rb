# frozen_string_literal: true

require 'spec_helper'
require 'dollar'

describe Dollar do
  describe '#times' do
    let(:five) { described_class.new(5) }

    specify do
      product = five.times(2)
      expect(product.amount).to eq 10
      product = five.times(3)
      expect(product.amount).to eq 15
    end
  end

  describe '==' do
    let(:dollar_a) { Dollar.new(5) }
    let(:dollar_b) { Dollar.new(5) }

    context 'when dollars are equal' do
      specify do
        expect(dollar_a).to eq dollar_b
      end
    end

    context 'when dollars are not equal' do
      let(:dollar_b) { Dollar.new(10) }

      specify do
        expect(dollar_a).not_to eq dollar_b
      end
    end
  end
end
