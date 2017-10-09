# frozen_string_literal: true

require 'spec_helper'
require 'xunit_example/assertions'
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
end
