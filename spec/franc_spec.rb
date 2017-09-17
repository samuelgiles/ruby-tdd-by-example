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
    let(:franc_a) { described_class.new(5) }
    let(:franc_b) { described_class.new(5) }

    context 'when dollars are equal' do
      specify do
        expect(franc_a).to eq franc_b
      end
    end

    context 'when dollars are not equal' do
      let(:franc_b) { described_class.new(10) }

      specify do
        expect(franc_a).not_to eq franc_b
      end
    end
  end
end
