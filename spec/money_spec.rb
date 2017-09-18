# frozen_string_literal: true

require 'spec_helper'
require 'money'
require 'franc'
require 'dollar'

describe Money do
  describe '==' do
    context 'for the same currency' do
      subject(:franc_a) { Franc.new(5) }
      let(:franc_b) { Franc.new(5) }

      context 'when amounts are equal' do
        it { is_expected.to eq franc_b }
      end

      context 'when amounts are not equal' do
        let(:franc_b) { Franc.new(10) }

        it { is_expected.not_to eq franc_b }
      end
    end

    context 'for different currencies' do
      subject(:franc_a) { Dollar.new(5) }
      let(:franc_b) { Franc.new(5) }

      context 'when amounts are equal' do
        it { is_expected.not_to eq franc_b }
      end
    end
  end
end
