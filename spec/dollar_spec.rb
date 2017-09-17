# frozen_string_literal: true

require 'spec_helper'
require 'dollar'

describe Dollar do
  describe '#times' do
    let(:five) { described_class.new(5) }
    let(:ten_dollars) { described_class.new(10) }
    let(:fifteen_dollars) { described_class.new(15) }

    specify do
      expect(five.times(2)).to eq ten_dollars
      expect(five.times(3)).to eq fifteen_dollars
    end
  end

  describe '==' do
    subject(:dollar_a) { described_class.new(5) }
    let(:dollar_b) { described_class.new(5) }

    context 'when dollars are equal' do
      it { is_expected.to eq dollar_b }
    end

    context 'when dollars are not equal' do
      let(:dollar_b) { described_class.new(10) }

      it { is_expected.not_to eq dollar_b }
    end
  end
end
