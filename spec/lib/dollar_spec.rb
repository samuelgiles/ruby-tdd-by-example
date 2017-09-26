# frozen_string_literal: true

require 'spec_helper'
require 'expression'
require 'money'
require 'pair'
require 'sum'
require 'bank'

describe Money do
  describe '#times' do
    let(:five) { Money.dollar(5) }
    let(:ten_dollars) { Money.dollar(10) }
    let(:fifteen_dollars) { Money.dollar(15) }

    specify do
      expect(five.times(2)).to eq ten_dollars
      expect(five.times(3)).to eq fifteen_dollars
    end
  end

  describe '#currency' do
    subject(:currency) { Money.dollar(5).currency }

    it { is_expected.to eq 'USD' }
  end
end
