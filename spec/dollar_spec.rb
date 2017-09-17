# frozen_string_literal: true

require 'spec_helper'
require 'dollar'

describe Dollar do
  describe '#times' do
    subject(:amount) { five.amount }

    let(:five) { described_class.new(5) }

    before { five.times(2) }

    it { is_expected.to eq 10 }
  end
end
