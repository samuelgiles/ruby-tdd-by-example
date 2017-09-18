# frozen_string_literal: true

require 'spec_helper'
require 'franc'

describe Franc do
  describe '#times' do
    let(:five) { Money.franc(5) }
    let(:ten_francs) { Money.franc(10) }
    let(:fifteen_francs) { Money.franc(15) }

    specify do
      expect(five.times(2)).to eq ten_francs
      expect(five.times(3)).to eq fifteen_francs
    end
  end

  describe '==' do
    subject(:franc_a) { Money.franc(5) }
    let(:franc_b) { Money.franc(5) }

    context 'when francs are equal' do
      it { is_expected.to eq franc_b }
    end

    context 'when francs are not equal' do
      let(:franc_b) { Money.franc(10) }

      it { is_expected.not_to eq franc_b }
    end
  end
end
