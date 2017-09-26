# frozen_string_literal: true

require 'spec_helper'
require 'pair'

describe Pair do
  let(:pair) { described_class.new(from, to) }
  let(:from) { 'USD' }
  let(:to) { 'CHF' }

  describe '==' do
    let(:other_pair) { described_class.new(other_from, other_to) }
    let(:other_from) { 'USD' }
    let(:other_to) { 'CHF' }

    context 'when from and to are equal to the other pair' do
      specify do
        expect(pair).to eq other_pair
      end
    end

    context 'when from is different to the other pair' do
      let(:from) { 'GBP' }

      specify do
        expect(pair).not_to eq other_pair
      end
    end

    context 'when to is different to the other pair' do
      let(:to) { 'AUD' }

      specify do
        expect(pair).not_to eq other_pair
      end
    end
  end

  describe '#hash_code' do
    subject(:hash_code) { pair.hash_code }

    it { is_expected.to eq 0 }
  end
end
