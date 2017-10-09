# frozen_string_literal: true

require 'spec_helper'
require 'xunit_example/assertions'
require 'xunit_example/test_result'
require 'xunit_example/test_case'
require 'xunit_example/was_run'
require 'xunit_example/test_case_test'

describe TestCaseTest do
  let(:test_case_test) { described_class.new(name) }

  describe '#test_template_method' do
    let(:name) { 'test_template_method' }

    specify do
      expect { test_case_test.run }.not_to raise_error Exception
    end
  end

  describe '#test_result' do
    let(:name) { 'test_result' }

    specify do
      expect { test_case_test.run }.not_to raise_error Exception
    end
  end

  describe '#test_broken_method' do
    let(:name) { 'test_failed_result' }

    specify do
      expect { test_case_test.run }.not_to raise_error Exception
    end
  end

  describe '#test_failed_result_formatting' do
    let(:name) { 'test_method' }

    specify do
      expect { test_case_test.test_failed_result_formatting }.not_to raise_error Exception
    end
  end
end
