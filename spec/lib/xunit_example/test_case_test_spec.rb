# frozen_string_literal: true

require 'spec_helper'
require 'xunit_example/assertions'
require 'xunit_example/test_case'
require 'xunit_example/was_run'
require 'xunit_example/test_case_test'

describe TestCaseTest do
  let(:test_case_test) { described_class.new(name) }

  describe '#test_running' do
    let(:name) { 'test_running' }

    specify do
      expect { test_case_test.run }.not_to raise_error Exception
    end
  end

  describe '#test_set_up' do
    let(:name) { 'test_set_up' }

    specify do
      expect { test_case_test.run }.not_to raise_error Exception
    end
  end
end
