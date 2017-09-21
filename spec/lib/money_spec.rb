# frozen_string_literal: true

require 'spec_helper'
require 'money'
require 'franc'
require 'dollar'

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
end
