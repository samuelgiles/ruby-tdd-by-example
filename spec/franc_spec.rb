# frozen_string_literal: true

require 'spec_helper'
require 'franc'

describe Franc do
  describe '#times' do
    let(:five) { described_class.new(5) }
    let(:ten_francs) { described_class.new(10) }
    let(:fifteen_francs) { described_class.new(15) }

    specify do
      expect(five.times(2)).to eq ten_francs
      expect(five.times(3)).to eq fifteen_francs
    end
  end

  describe '==' do
    subject(:franc_a) { described_class.new(5) }
    let(:franc_b) { described_class.new(5) }

    context 'when francs are equal' do
      it { is_expected.to eq franc_b }
    end

    context 'when francs are not equal' do
      let(:franc_b) { described_class.new(10) }

      it { is_expected.not_to eq franc_b }
    end
  end
end
