# frozen_string_literal: true

require 'spec_helper'
require 'expression'
require 'money'
require 'pair'
require 'sum'
require 'bank'

describe Money do
  describe '#times' do
    let(:five) { Money.franc(5) }
    let(:ten_francs) { Money.franc(10) }
    let(:fifteen_francs) { Money.franc(15) }

    specify do
      expect(five.times(2)).to eq ten_francs
      expect(five.times(3)).to eq fifteen_francs
    end
  end

  describe '#currency' do
    subject(:currency) { Money.franc(5).currency }

    it { is_expected.to eq 'CHF' }
  end
end
