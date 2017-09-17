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
end
